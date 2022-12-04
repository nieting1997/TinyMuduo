#pragma once
#include "nocopyable.h"
#include "Socket.h"
#include "Channel.h"

#include <functional>

class EventLoop;
class InetAddress;

class Accpetor : nocopyable
{
public:
    using NewConnectionCallback = std::function<void(int sockfd, const InetAddress&)>;
    Accpetor(EventLoop *Loop, const InetAddress& ListenAddr, bool reuseport);
    ~Accpetor();

    void setNewConnectionCallback(const NewConnectionCallback&cb) {
        newConnectionCallback_ = cb;
    }

    bool listenning() const { return listenning_; }
    void listen();
private:
    void handleRead();

    EventLoop *loop_; // acceptor使用用户定义的baseloop(mainloop)
    Socket acceptSocket_;
    Channel acceptChannel_;
    NewConnectionCallback newConnectionCallback_;
    bool listenning_;
};