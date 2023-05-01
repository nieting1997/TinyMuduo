#pragma once

#include <vector>
#include <string>
#include <algorithm>

// 网络库底层的缓冲器类型定义
class Buffer
{
public:
    static const size_t kCheapPrepend = 8; // 数据包长度
    static const size_t kInitialSize = 1024; // 缓冲区大小

    explicit Buffer(size_t initialSize = kInitialSize)
        : buffer_(kCheapPrepend + initialSize)
        , readerIndex_(kCheapPrepend)
        , writerIndex_(kCheapPrepend)
    {}

    // 可读
    size_t readableBytes() const 
    { 
        return writerIndex_ - readerIndex_; 
    }

    // 可写
    size_t writableBytes() const
    {
        return buffer_.size() - writerIndex_;
    }

    size_t prependableBytes() const
    {
        return readerIndex_;
    }

    // 返回缓冲区中可读数据的起始地址
    const char* peek() const
    {
        return begin() + readerIndex_;
    }

    // 对缓冲区做复位操作
    void retrieve(size_t len)
    {
        if (len < readableBytes()) {
            readerIndex_ += len; // 只读取一部分    
        } else {
            retrieveAll();
        }
    }

    void retrieveAll()
    {
        readerIndex_ = writerIndex_ = kCheapPrepend;
    }

    // onMessage string <- buffer
    std::string retrieveAllAsString()
    {
        return retrieveAsString(readableBytes()); // 应用可读取数据的长度
    }

    std::string retrieveAsString(size_t len)
    {
        std::string result(peek(), len);
        retrieve(len); // 读走了缓冲区的数据
        return result;
    }

    // buffer_size - writeIndex_    len
    void ensureWritableBytes(size_t len) 
    {
        if (writableBytes() < len)
        {
            makeSpace(len); // 扩容函数
        }
    }

    // 把[data, data+len]内存上的数据添加到Writable缓冲区当中
    void append(const char* data, size_t len)
    {
        ensureWritableBytes(len);
        std::copy(data, data+len, beginWrite());
        writerIndex_ += len;
    }

    char* beginWrite()
    {
        return begin() + writerIndex_;
    }

    const  char* beginWrite() const
    {
        return begin() + writerIndex_;
    }

    void makeSpace(size_t len)
    {
        if (writableBytes() + prependableBytes() < len + kCheapPrepend)
        {
            buffer_.resize(writerIndex_ + len);
        } else {
            size_t readable = readableBytes();
            std::copy(begin() + readerIndex_, begin() + writerIndex_, begin() + kCheapPrepend);
            readerIndex_ = kCheapPrepend;
            writerIndex_ = readerIndex_ + readable;
        }
    }

    // 从fd上读取数据
    ssize_t readFd(int fd, int* saveErrno);
    // 通过fd发送数据
    ssize_t writeFd(int fd, int* saveErrno);

private:
    char* begin()
    {
        // 访问第一位元素，之后再取第一位元素地址
        // vector底层数组首元素地址，及数组起始地址
        return &*buffer_.begin();
    }

    const char* begin() const
    {
        return &*buffer_.begin();
    }

    std::vector<char> buffer_;
    size_t readerIndex_;
    size_t writerIndex_;
};
