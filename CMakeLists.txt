cmake_minimum_required(VERSION 3.5) 
project(TinyMuduo) 
# 网络库最终编译成so动态库，设置最终编译的路径 
set(LIBRARY_OUTPUT_DIRECTORY ${PROTECT_SOURCE_DIR}/lib) 
# 设置调试信息,以及 启动c11语言标准 
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -std=c++11") 
# 定义参与的源代码文件 
aux_source_directory(. SRC_LIST) 
# 编译动态库 
add_library(TinyMuduo SHARED ${SRC_LIST})