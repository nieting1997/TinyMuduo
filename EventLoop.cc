#include "EventLoop.h"
#include "Logger.h"
#include "Poller.h"
#include "Channel.h"

#include <sys/eventfd.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <memory>

/*
                    Eventloop
    ChannelList                     Poller
                            ChannelMap<fd, channel*> (size(ChannelList) >= size(ChannelList))
    ChannelMap放置了我们想要关注的channel，channelList是全量的channel
*/

/*
                mainLoop
    subLoop     subLoop       subLoop
    通过wakeupfd来唤醒subLoop执行操作 很经典的设计(如果通过生产者消费者模型会更加清晰但效率大大折扣)
*/

// 防止一个线程创建多个EventLoop
// __thread => thread_local
__thread EventLoop *t_loopInThisThread = nullptr;
// 定义默认的Poller IO复用接口的超时时间
const int kPollTimes = 10000; // 10s

// 创建wakeupfd，用来notify唤醒subReactor处理新来的channel
int createEventfd()
{   
    int evtfd = ::eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC); //通知本地进程
    if (evtfd < 0)
    {
        LOG_FATAL("eventfd error: %d", errno);
    }
    return evtfd;
}

EventLoop::EventLoop()
    : looping_(false)
    , quit_(false)
    , callingPendingFunctors_(false)
    , threadId_(CurrentThread::tid())
    , poller_(Poller::newDefaultPoller(this))
    , wakeupFd_(createEventfd())
    , wakeupChannel_(new Channel(this, wakeupFd_))
{
    LOG_DEBUG("EventLoop create %p in thread %d \n", this, threadId_);
    if (t_loopInThisThread)
    {
        LOG_FATAL("Another EventLoop %p exists in this thread %d \n", t_loopInThisThread, threadId_);
    } else {
        t_loopInThisThread = this;
    }

    // todo：不是特别理解
    // 设置wakeup的事件类型以及发生事件后的回调操作
    wakeupChannel_->setReadCallback(std::bind(&EventLoop::handleRead, this)); // 类成员函数在绑定时必须加类成员指针
    // 每一个eventloop都将监听wakeupChannel的EPOLLIN读事件
    wakeupChannel_->enableReading();
}

EventLoop::~EventLoop()
{
    wakeupChannel_->disableALL();
    wakeupChannel_->remove();
    ::close(wakeupFd_);
    t_loopInThisThread = nullptr;
}

// 开启事件循环
void EventLoop::loop()
{
   looping_ = true;
   quit_ = false;

   LOG_INFO("EventLoop %p start looping \n", this);

   while(!quit_)
   {
        activeCannels_.clear();
        // 监听两类fd 一种是client fd， 一种是wakeup fd
        pollReturnTime_ = poller_->poll(kPollTimes, &activeCannels_);
        for (Channel* channel : activeCannels_)
        {
            // Pollor能够监听那些channel发生事件，然后上报给EventLoop，通知channel处理相应的事件
            channel->handleEvent(pollReturnTime_);
        }
        // 执行当前EventLoop事件循环需要处理的回调操作
        /*
            IO线程 mainLoop accept(接收新用户的连接)fd ==(分发)> subloop
            mainloop 事先注册回调(唤醒subloop来执行)
        */
        doPendingFunctors();
   }
   LOG_INFO("EventLoop %p stop looping.\n", this);
  looping_ = false;
}

// 退出
    // loop在自己线程调用
    // loop在其他线程中调用
void EventLoop::quit()
{
    quit_ = true;
    if (!isInLoopThread()) // loop在其他线程中调用[eg:workloop中调用mainloop中的quit]
    {
        wakeup(); // 唤醒主线程
    }
}

// 当前loop中执行cb
void EventLoop::runInLoop(Functor cb)
{
    if (isInLoopThread()) // 在当前的loop中执行cb
    {
        cb();
    }
    else // 在非当前loop线程中执行cb，需唤醒对应的loop
    {
        queueInLoop(cb);
    }
}

// 把cb放入队列中，唤醒loop所在的线程，执行cb
void EventLoop::queueInLoop(Functor cb)
{
    {
        std::unique_lock<std::mutex> lock(mutex_);
        pendingFunctors_.emplace_back(cb);
    }
    // 唤醒相应的，需要执行回调操作的loop线程
    // 非loop线程 || 当前线程正在执行回调，但是loop又有了新的回调
    if (!isInLoopThread() || callingPendingFunctors_)
    {
        wakeup(); // 唤醒loop所在的线程
    }
}

void EventLoop::handleRead()
{
    uint64_t one = 1;
    size_t n = read(wakeupFd_, &one, sizeof(one));
    if (n != sizeof(one))
    {
        // 具体读了多少字节
        LOG_ERROR("EventLoo::handleRead() reads %d bytes instead of 8", static_cast<int>(n));
    }
}

// 唤醒loop所在的线程
// 向wakeupfd写数据, wakeup发生读事件，当前loop被唤醒
void EventLoop::wakeup()
{
    uint64_t one = 1;
    size_t n = write(wakeupFd_, &one, sizeof(one));
    if (n != sizeof(one))
    {
        LOG_ERROR("Eventloop::wakeup() write %lu bytes instead of 8", sizeof(one));
    }
}

void EventLoop::updateChannel(Channel *channel)
{
    poller_->updateChannel(channel);
}

void EventLoop::removeChannel(Channel *channel)
{
    poller_->removeChannel(channel);
}

bool EventLoop::hasChannel(Channel *channel)
{
    return poller_->hasChannel(channel);
}

// 执行回调
void EventLoop::doPendingFunctors()
{
    std::vector<Functor> functors;
    callingPendingFunctors_ = true;
    {
        std::unique_lock<std::mutex> lock(mutex_);
        functors.swap(pendingFunctors_);
    }
    for (const auto &functor : functors)
    {
        functor(); // 执行当前loop需要执行的回调操作
    }
    callingPendingFunctors_ = false;
}
