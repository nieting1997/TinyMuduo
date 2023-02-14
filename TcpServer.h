// 对外服务器编程使用的类
#pragma once

#include "EventLoop.h"
#include "Accpetor.h"
#include "InetAddress.h"
#include "nocopyable.h"
#include "EventLoopThreadPool.h"
#include "Callbacks.h"

#include <functional>
#include <string>
#include <memory>
#include <atomic>
#include <unordered_map>

class TcpServer : nocopyable
{
public:
    using ThreadCallBack = std::function<void(EventLoop*)>;
    
    enum Option{
        kNoReusePort,
        kReusePort,
    };

    TcpServer(EventLoop *loop,
                const InetAddress &listenAddr,
                const std::string &nameArg,
                Option option = kNoReusePort);
    ~TcpServer();

    void setThreadInitCallback(const ThreadCallBack &cb) {threadInitCallback_ = cb;}
    void setConnectinoInitCallback(const ConnectionCallback &cb) {connectionCallback_ = cb;}
    void setMessageCallback(const MessageCallback &cb) {messageCallback_ = cb;}
    void setWriteCompleteCallback(const WriteCompleteCallback &cb) {writeCompleteCallback_ = cb;}
    // 设置底层subloop个数
    void setThreadNum(int numThreads);
    // 开启服务器监听
    void start();

private:
    void newConnection(int sockfd, const InetAddress &peerAddr);
    void removeConnection(const TcpConnectionPtr &conn);
    void removeConnectionInLoop(const TcpConnectionPtr &conn);

    using ConnectionMap = std::unordered_map<std::string, TcpConnectionPtr>;

    EventLoop *loop_; // base loop

    const std::string ipPort_;
    const std::string name_;

    std::unique_ptr<Accpetor> accpetor_; // 运行在mainloop，任务就是监听新连接事件

    std::shared_ptr<EventLoopThreadPool> threadPool_; // one loop per thread

    ConnectionCallback connectionCallback_; // 有新连接时的回调
    MessageCallback messageCallback_; // 有读写消息时的回调
    WriteCompleteCallback writeCompleteCallback_; // 消息发送完成以后的回调

    ThreadCallBack threadInitCallback_; // loop线程初始化的回调

    std::atomic_int started_;
    int nextConnId_;
    ConnectionMap connections_; // 保存所有的连接
};