#include "EventLoopThread.h"
#include "EventLoop.h"

EventLoopThread::EventLoopThread(const ThreadInitCallback &cd,
    const std::string &name)
    : loop_(nullptr)
    , exiting_(false)
    , thread_(std::bind(&EventLoopThread::threadFunc, this), name)
    , mutex_()
    , cond_()
    , callback_(cd)
{
}

EventLoopThread::~EventLoopThread()
{
    exiting_ = true;
    if (loop_ != nullptr)
    {
        loop_->quit();
        thread_.join();
    }
}

EventLoop* EventLoopThread::startLoop()
{
    thread_.start();
    EventLoop *loop = nullptr;
    {
        std::unique_lock<std::mutex> lock(mutex_); 
        while (loop_ == nullptr)
        {
            cond_.wait(lock); // 等待期间释放锁
        }
        loop = loop_;
    }
    return loop;
}

// 独立新线程运行
void EventLoopThread::threadFunc()
{
    EventLoop loop; //one loop per thread
    if (callback_)
    {
        callback_(&loop);
    }

    {
        std::unique_lock<std::mutex> lock(mutex_);
        loop_ = &loop;
        cond_.notify_one();
    }

    loop.loop(); // ==> Poller.poll
    
    {
        std::unique_lock<std::mutex> lock(mutex_);
        loop_ = nullptr;
    }
}