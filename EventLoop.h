#pragma once

#include "nocopyable.h"
#include "Timestamp.h"
#include "CurrentThread.h"

#include <functional>
#include <vector>
#include <atomic>
#include <memory>
#include <mutex>

class Channel;
class Poller;

// 时间循环类
// 包含两个大模块 Channel Poller
class EventLoop : nocopyable
{
public:
    using Functor = std::function<void()>;
    
    EventLoop();
    ~EventLoop();

    // 开启事件循环
    void loop();
    // 退出事件循环
    void quit();

    Timestamp pollReturnTime() const {return pollReturnTime_;}

    // 在当前loop中执行
    void runInLoop(Functor cd);
    // 把cb放入队列中，唤醒loop所在的线程，执行cb
    void queueInLoop(Functor cd);

    // 唤醒loop所在的线程
    void wakeup();

    // EventLoop的方法 -> poller的方法
    void updateChannel(Channel *channel);
    void removeChannel(Channel *channel);    
    bool hasChannel(Channel *channel);

    // 判断eventloop对象是否在自己线程中
    bool isInLoopThread() const { return threadId_ == CurrentThread::tid(); }

private:
    void handleRead(); // wake up 
    void doPendingFunctors(); // 执行回调

    using ChannelList = std::vector<Channel*>;

    std::atomic_bool looping_; // 原子操作，通过CAS实现
    std::atomic_bool quit_; // 标识退出loop循环

    const pid_t threadId_; // 记录当前loop所在线程的id
    Timestamp pollReturnTime_; // poller返回发生事件的时间点
    std::unique_ptr<Poller> poller_;

    int wakeupFd_; 
    // mainloop获取一个新用户的channel，通过轮寻算法选择一个subloop，通过该成员唤醒subloop处理
    std::unique_ptr<Channel> wakeupChannel_;
    
    ChannelList activeCannels_;

    std::atomic_bool callingPendingFunctors_; //标识当前loop是否有需要执行的回调操作
    std::vector<Functor> pendingFunctors_; //存储loop需要执行的所有回调操作
    std::mutex mutex_; //互斥锁，用来保护上面vector线程安全操作    
};