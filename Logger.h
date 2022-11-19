#pragma once

#include <string>
#include <iostream>
#include "nocopyable.h"

// LOG_INFO("%s %d", arg1, arg2)
#define LOG_INFO(logmsgFormat, ...) \
    do \
    { \
        Logger &logger = Logger::instance(); \
        logger.setLogLevel(INFO); \
        char buf[1024] = {0}; \
        snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)
#define LOG_ERROR(logmsgFormat, ...) \
    do \
    { \
        Logger &logger = Logger::instance(); \
        logger.setLogLevel(ERROR); \
        char buf[1024] = {0}; \
        snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)    
#define LOG_FATAL(logmsgFormat, ...) \
    do \
    { \
        Logger &logger = Logger::instance(); \
        logger.setLogLevel(FATAL); \
        char buf[1024] = {0}; \
        snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
        logger.log(buf); \
    } while (0)

// 调试信息一般默认关闭，通过宏将其关闭
#ifdef MUDEBUG
    #define LOG_DEBUG(logmsgFormat, ...) \
        do \
        { \
            Logger &logger = Logger::instance(); \
            logger.setLogLevel(DEBUG); \
            char buf[1024] = {0}; \
            snprintf(buf, 1024, logmsgFormat, ##__VA_ARGS__); \
            logger.log(buf); \
        } while (0)
#else
    #define LOG_DEBUG(logmsgFormat, ...)
#endif

// 日志级别 INFO ERROR FATAL DEBUG
enum LogLevel 
{
    INFO, // 普通信息
    ERROR, // 错误信息
    FATAL, // core信息
    DEBUG, // 调试信息
};

// 输出日志类
class Logger : nocopyable
{
public:
    // 唯一化实例对象
    static Logger& instance();
    // 设置日志级别
    void setLogLevel(int level);
    // 写日志
    void log(std::string msg);
private:
    int logLevel_;
    Logger(){}
};

