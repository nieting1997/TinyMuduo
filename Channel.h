#pragma once

#include "nocopyable.h"
#include "Timestamp.h"

#include <functional>
#include <memory>

class EventLoop; // 可以少暴露头文件类信息

// channel 通道 
// 封装socketfd和感兴趣的event，如EPOLLIN/OUT等事件，同时绑定了poller返回的具体事件

class Channel : nocopyable
{
public:
    using EventCallback = std::function<void()>;
    using ReadEventCallback = std::function<void(Timestamp)>;

    Channel(EventLoop* Loop, int fd);
    ~Channel();

    // fd得到poller通知后，处理事件
    void handleEvent(Timestamp receiveTime);
    // 设置回调函数对象
    void setReadCallback(ReadEventCallback cd) { readCallback_ = std::move(cd); }
    void setWriteCallback(EventCallback cd) { writeCallback_ = std::move(cd); }
    void setCloseCallback(EventCallback cd) { closeCallback_ = std::move(cd); }
    void setErrorCallback(EventCallback cd) { errorCallback_ = std::move(cd); }

    // 防止channel被手动remove掉，channel还在执行回调操作
    void tie(const std::shared_ptr<void>&);

    int fd() const { return fd_; }
    int events() const { return events_; }
    void set_revents(int revt) { revents_ = revt; }

    // 设置fd相应的事件状态
    void enableReading() {events_ |= kReadEvent; update();};
    void disableReading() {events_ &= ~kReadEvent; update();};
    void enableWriting() {events_ |= kWriteEvent; update();};
    void disableWriting() {events_ &= ~kWriteEvent; update();};
    void disableALL() {events_ = kNoneEvent; update();};

    // 返回fd当前的事件状态
    bool isNoneEvent() const { return events_ == kNoneEvent; }
    bool isWriting() const { return events_ & kWriteEvent; }
    bool isReading() const { return events_ & kReadEvent; }

    int index() { return index_; }
    void set_index(int idx) { index_ = idx; }

    // one loop per thread
    EventLoop* ownerLoop() { return loop_; }
    void remove();

private:
    void update();
    void handleEventWithGuard(Timestamp receiveTime);

    static const int kNoneEvent;
    static const int kReadEvent;
    static const int kWriteEvent;

    EventLoop* loop_; // 事件循环
    const int fd_; // poller监听对象
    int events_; // 注册fd感兴趣的事件
    int revents_; // poller返回的具体发生的事件
    int index_;

    std::weak_ptr<void> tie_; // 跨线程判断channel存在
    bool tied_;

    // fd发生事件后，该部分负责调用具体的回调事件
    ReadEventCallback readCallback_;
    EventCallback writeCallback_;
    EventCallback closeCallback_;
    EventCallback errorCallback_;
};
