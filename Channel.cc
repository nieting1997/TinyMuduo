#include "Channel.h"
#include "EventLopp.h"
#include "Logger.h"

#include <sys/epoll.h>

const int Channel::kNoneEvent = 0;
const int Channel::kReadEvent = EPOLLIN | EPOLLPRI;
const int Channel::kWriteEvent = EPOLLOUT;

// todo: muduo库中断言
Channel::Channel(EventLoop* Loop, int fd)
    : loop_(Loop),
      fd_(fd),
      events_(0),
      revents_(0),
      index_(-1),
      tied_(false)
{
}

// todo: muduo库中断言
Channel::~Channel()
{
}

void Channel::tie(const std::shared_ptr<void>& obj)
{
    tie_ = obj; 
    tied_ = true;
}

// 改变channel所表示的fd的events事件后，update负责在poller里面更新对应的事件epoll_ctl
void Channel::update()
{
    // 通过channel所属的eventloop，调用poller的相应方法，注册fd的event事件
    // todo: add eventloop code
}

// event loop删除所属channel
void Channel::remove()
{
    // todo：add eventloop code
}

void Channel::handleEvent(Timestamp receiveTime)
{
    if (tied_) {
        std::shared_ptr<void> guard = tie_.lock();
        if (guard) {
            handleEventWithGuard(receiveTime);
        }
    } else {
        handleEventWithGuard(receiveTime);
    }
}

// 根据事件执行对应操作
void Channel::handleEventWithGuard(Timestamp receiveTime)
{
    LOG_INFO("channel handleEventWithGuard revents:%d\n", revents_);
 
    if ((revents_ & EPOLLHUP) && !(revents_ & EPOLLIN)) { // EPOLLHUP套接字关闭
        if (closeCallback_) {
            closeCallback_();
        }
    } 
    if (revents_ & EPOLLERR) {
        if (errorCallback_) {
            errorCallback_();
        }
    }
    if (revents_ & (EPOLLIN | EPOLLPRI)) { // EPOLLPRI 表示对应的文件描述符有紧急的数据可读
        if (readCallback_) {
            readCallback_(receiveTime);
        }
    }
    if (revents_ & (EPOLLOUT)) {
        if (writeCallback_) {
            writeCallback_();
        }
    }
}