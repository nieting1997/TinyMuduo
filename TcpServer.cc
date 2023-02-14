#include "TcpServer.h"
#include "Logger.h"

#include <functional>

EventLoop* CheckLoopNotNull(EventLoop* loop)
{
    if (loop == nullptr)
    {
        LOG_FATAL("%s:%s:%d mainloop is null\n", __FILE__, __FUNCTION__, __LINE__);
    }
    return loop;
}

TcpServer::TcpServer(EventLoop *loop, const InetAddress &listenAddr, 
    const std::string &nameArg, Option option)
    : loop_(CheckLoopNotNull(loop))
    , ipPort_(listenAddr.toIpPort())
    , name_(nameArg)
    , accpetor_(new Accpetor(loop, listenAddr, option == kReusePort))
    , threadPool_(new EventLoopThreadPool(loop, name_))
    , connectionCallback_()
    , messageCallback_()
    , nextConnId_(1)
{
    // 当有新用户连接时，会执行TcpServer::newConnection回调
    accpetor_->setNewConnectionCallback(std::bind(&TcpServer::newConnection, this,
        std::placeholders::_1, std::placeholders::_2));
}

void TcpServer::newConnection(int sockfd, const InetAddress &peerAddr)
{

}

// 设置底层subloop个数
void TcpServer::setThreadNum(int numThreads)
{
    threadPool_->setThreadNum(numThreads);
}

// 开启服务器监听
void TcpServer::start()
{
    if (started_++ == 0)  // 防止一个对象被start多次
    {
        threadPool_->start(threadInitCallback_); // 启动底层loop线程池
        loop_->runInLoop(std::bind(&Accpetor::listen, accpetor_.get()));
    }
}