#pragma once

class nocopyable
{
public:
    nocopyable(const nocopyable&) = delete; //拷贝构造
    nocopyable& operator=(const nocopyable&) = delete; //拷贝赋值
protected:
    // 防止外界访问，但可以继承访问
    nocopyable() = default;
    ~nocopyable() = default;
};