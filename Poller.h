#pragma once

#include "nocopyable.h"
#include "Timestamp.h"

#include <vector>
#include <unordered_map>

class Channel;
class EventLoop;

// muduo库 多路事件分发器
// IO复用模块
class Poller : nocopyable
{
private:
    EventLoop *ownerLoop; // poller所属的事件循环
protected:
    // key: sockfd     
    // value: fd 所处channel
    using ChannelMap = std::unordered_map<int, Channel*>;
    ChannelMap channels_;
public:
    using ChannelList = std::vector<Channel*>;

    Poller(EventLoop *loop);
    virtual ~Poller();

    virtual Timestamp poll(int timeoutMS, ChannelList *activeChannels) = 0;
    virtual void updateChannel(Channel *channel) = 0;
    virtual void removeChannel(Channel *channel) = 0;

    // 判断channel是否在当前poller中
    bool hasChannel(Channel *channel) const;

    // eventloop可以通过该接口得到默认的IO复用具体实现
    // 不在本函数对应的.cc文件实现 由于派生类才是具有实体的
    static Poller *newDefaultPoller(EventLoop *loop);
};    

