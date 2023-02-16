#include "Buffer.h"
#include <errno.h>
#include <sys/uio.h>

ssize_t Buffer::readFd(int fd, int* saveErrno)
{
    char extrabuf[65536] = {0}; // 64k
    
    struct iovec vec[2];
    
    // 先填充vec0，再填充vec1
    const size_t writable = writableBytes(); // buffer底层可写剩余空间大小
    vec[0].iov_base = begin() + writerIndex_;
    vec[0].iov_len = writable;

    vec[1].iov_base = extrabuf;
    vec[1].iov_len = sizeof(extrabuf);

    const int iovcnt = (writable < sizeof extrabuf) ? 2 : 1;
    const ssize_t n = ::readv(fd, vec, iovcnt);
    if (n < 0) {
        *saveErrno = errno;
    } else if (n <= writable) { // 可写缓冲区够存储数据
        writerIndex_ += n;
    } else { // extrabuf也写入了数据
        writerIndex_ = buffer_.size();
        append(extrabuf, n - writable); 
    }
    return n;
}