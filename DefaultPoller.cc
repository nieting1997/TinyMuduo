// 基类不能引用派生类 所以新设计default来实现static方法
#include "Poller.h"

#include <stdlib.h>

//todo: 补充实现
Poller* Poller::newDefaultPoller(EventLoop* lopp)
{
    if (::getenv("MUDUO_USE_POLL"))
    {
        return nullptr;
    } else {
        return nullptr;
    }

}