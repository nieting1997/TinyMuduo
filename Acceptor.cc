#include "Accpetor.h"
#include "Logger.h"
#include "InetAddress.h"

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <errno.h>
#include <unistd.h>

static int createNonblocking()
{
    int socketfd = ::socket(AF_INET, SOCK_STREAM | SOCK_NONBLOCK | SOCK_CLOEXEC, IPPROTO_TCP);
    if (socketfd < 0)
    {
        LOG_FATAL("%s:%s:%d listen socket create err:%d \n", __FILE__, __FUNCTION__, __LINE__, errno);
    }
    return socketfd;
}

Accpetor::Accpetor(EventLoop *loop, const InetAddress& listenAddr, bool reuseport)
    : loop_(loop)
    , acceptSocket_(createNonblocking()) // 创建套接字
    , acceptChannel_(loop, acceptSocket_.fd())
    , listenning_(false)
{
    acceptSocket_.setReuseAddr(true);
    acceptSocket_.setReusePort(true);
    acceptSocket_.bindAddress(listenAddr); // 绑定套接字
    // tcpserver.start accept.listen 有新用户连接，要执行一个回调
    // connfd -> channel -> subloop
    // baseloop -> acceptChannel(listenfd) ->
    acceptChannel_.setReadCallback(std::bind(&Accpetor::handleRead, this));
}

Accpetor::~Accpetor()
{
    acceptChannel_.disableALL();
    acceptChannel_.remove();
}

void Accpetor::listen()
{
    listenning_ = true;
    acceptSocket_.listen();
    acceptChannel_.enableReading(); //acceptChannel => poller
}

// listenfd有事件发生，就是有新用户连接
void Accpetor::handleRead()
{
    InetAddress peerAddr;
    int connfd = acceptSocket_.accept(&peerAddr);
    if (connfd >= 0)
    {
        if (newConnectionCallback_) 
        {
            newConnectionCallback_(connfd, peerAddr); //轮询分发新客户channel
        }
        else
        {
            ::close(connfd);
        }
    }
    else
    {
        LOG_ERROR("%s:%s:%d accept err:%d \n", __FILE__, __FUNCTION__, __LINE__, errno);
        if (errno == EMFILE)
        {
            LOG_ERROR("%s:%s:%d sockfd reached limit:%d \n", __FILE__, __FUNCTION__, __LINE__, errno);
        }
    }
}
