# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/home/桌面/TinyMuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/home/桌面/TinyMuduo/build

# Include any dependencies generated for this target.
include CMakeFiles/TinyMuduo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TinyMuduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TinyMuduo.dir/flags.make

CMakeFiles/TinyMuduo.dir/TcpServer.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/TcpServer.cc.o: ../TcpServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TinyMuduo.dir/TcpServer.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/TcpServer.cc.o -c /home/home/桌面/TinyMuduo/TcpServer.cc

CMakeFiles/TinyMuduo.dir/TcpServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/TcpServer.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/TcpServer.cc > CMakeFiles/TinyMuduo.dir/TcpServer.cc.i

CMakeFiles/TinyMuduo.dir/TcpServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/TcpServer.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/TcpServer.cc -o CMakeFiles/TinyMuduo.dir/TcpServer.cc.s

CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.requires

CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.provides: CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.provides

CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/TcpServer.cc.o


CMakeFiles/TinyMuduo.dir/Logger.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/Logger.cc.o: ../Logger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TinyMuduo.dir/Logger.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/Logger.cc.o -c /home/home/桌面/TinyMuduo/Logger.cc

CMakeFiles/TinyMuduo.dir/Logger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/Logger.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/Logger.cc > CMakeFiles/TinyMuduo.dir/Logger.cc.i

CMakeFiles/TinyMuduo.dir/Logger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/Logger.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/Logger.cc -o CMakeFiles/TinyMuduo.dir/Logger.cc.s

CMakeFiles/TinyMuduo.dir/Logger.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/Logger.cc.o.requires

CMakeFiles/TinyMuduo.dir/Logger.cc.o.provides: CMakeFiles/TinyMuduo.dir/Logger.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/Logger.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/Logger.cc.o.provides

CMakeFiles/TinyMuduo.dir/Logger.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/Logger.cc.o


CMakeFiles/TinyMuduo.dir/Poller.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/Poller.cc.o: ../Poller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TinyMuduo.dir/Poller.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/Poller.cc.o -c /home/home/桌面/TinyMuduo/Poller.cc

CMakeFiles/TinyMuduo.dir/Poller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/Poller.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/Poller.cc > CMakeFiles/TinyMuduo.dir/Poller.cc.i

CMakeFiles/TinyMuduo.dir/Poller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/Poller.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/Poller.cc -o CMakeFiles/TinyMuduo.dir/Poller.cc.s

CMakeFiles/TinyMuduo.dir/Poller.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/Poller.cc.o.requires

CMakeFiles/TinyMuduo.dir/Poller.cc.o.provides: CMakeFiles/TinyMuduo.dir/Poller.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/Poller.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/Poller.cc.o.provides

CMakeFiles/TinyMuduo.dir/Poller.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/Poller.cc.o


CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o: ../DefaultPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o -c /home/home/桌面/TinyMuduo/DefaultPoller.cc

CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/DefaultPoller.cc > CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.i

CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/DefaultPoller.cc -o CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.s

CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.requires

CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.provides: CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.provides

CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o


CMakeFiles/TinyMuduo.dir/Timestamp.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/Timestamp.cc.o: ../Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TinyMuduo.dir/Timestamp.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/Timestamp.cc.o -c /home/home/桌面/TinyMuduo/Timestamp.cc

CMakeFiles/TinyMuduo.dir/Timestamp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/Timestamp.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/Timestamp.cc > CMakeFiles/TinyMuduo.dir/Timestamp.cc.i

CMakeFiles/TinyMuduo.dir/Timestamp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/Timestamp.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/Timestamp.cc -o CMakeFiles/TinyMuduo.dir/Timestamp.cc.s

CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.requires

CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.provides: CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.provides

CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/Timestamp.cc.o


CMakeFiles/TinyMuduo.dir/EventLoop.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/EventLoop.cc.o: ../EventLoop.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TinyMuduo.dir/EventLoop.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/EventLoop.cc.o -c /home/home/桌面/TinyMuduo/EventLoop.cc

CMakeFiles/TinyMuduo.dir/EventLoop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/EventLoop.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/EventLoop.cc > CMakeFiles/TinyMuduo.dir/EventLoop.cc.i

CMakeFiles/TinyMuduo.dir/EventLoop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/EventLoop.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/EventLoop.cc -o CMakeFiles/TinyMuduo.dir/EventLoop.cc.s

CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.requires

CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.provides: CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.provides

CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/EventLoop.cc.o


CMakeFiles/TinyMuduo.dir/Thread.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/Thread.cc.o: ../Thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TinyMuduo.dir/Thread.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/Thread.cc.o -c /home/home/桌面/TinyMuduo/Thread.cc

CMakeFiles/TinyMuduo.dir/Thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/Thread.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/Thread.cc > CMakeFiles/TinyMuduo.dir/Thread.cc.i

CMakeFiles/TinyMuduo.dir/Thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/Thread.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/Thread.cc -o CMakeFiles/TinyMuduo.dir/Thread.cc.s

CMakeFiles/TinyMuduo.dir/Thread.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/Thread.cc.o.requires

CMakeFiles/TinyMuduo.dir/Thread.cc.o.provides: CMakeFiles/TinyMuduo.dir/Thread.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/Thread.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/Thread.cc.o.provides

CMakeFiles/TinyMuduo.dir/Thread.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/Thread.cc.o


CMakeFiles/TinyMuduo.dir/InetAddress.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/InetAddress.cc.o: ../InetAddress.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/TinyMuduo.dir/InetAddress.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/InetAddress.cc.o -c /home/home/桌面/TinyMuduo/InetAddress.cc

CMakeFiles/TinyMuduo.dir/InetAddress.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/InetAddress.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/InetAddress.cc > CMakeFiles/TinyMuduo.dir/InetAddress.cc.i

CMakeFiles/TinyMuduo.dir/InetAddress.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/InetAddress.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/InetAddress.cc -o CMakeFiles/TinyMuduo.dir/InetAddress.cc.s

CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.requires

CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.provides: CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.provides

CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/InetAddress.cc.o


CMakeFiles/TinyMuduo.dir/Channel.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/Channel.cc.o: ../Channel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/TinyMuduo.dir/Channel.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/Channel.cc.o -c /home/home/桌面/TinyMuduo/Channel.cc

CMakeFiles/TinyMuduo.dir/Channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/Channel.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/Channel.cc > CMakeFiles/TinyMuduo.dir/Channel.cc.i

CMakeFiles/TinyMuduo.dir/Channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/Channel.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/Channel.cc -o CMakeFiles/TinyMuduo.dir/Channel.cc.s

CMakeFiles/TinyMuduo.dir/Channel.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/Channel.cc.o.requires

CMakeFiles/TinyMuduo.dir/Channel.cc.o.provides: CMakeFiles/TinyMuduo.dir/Channel.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/Channel.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/Channel.cc.o.provides

CMakeFiles/TinyMuduo.dir/Channel.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/Channel.cc.o


CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o: ../EventLoopThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o -c /home/home/桌面/TinyMuduo/EventLoopThread.cc

CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/EventLoopThread.cc > CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.i

CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/EventLoopThread.cc -o CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.s

CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.requires

CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.provides: CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.provides

CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o


CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o: ../CurrentThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o -c /home/home/桌面/TinyMuduo/CurrentThread.cc

CMakeFiles/TinyMuduo.dir/CurrentThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/CurrentThread.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/CurrentThread.cc > CMakeFiles/TinyMuduo.dir/CurrentThread.cc.i

CMakeFiles/TinyMuduo.dir/CurrentThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/CurrentThread.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/CurrentThread.cc -o CMakeFiles/TinyMuduo.dir/CurrentThread.cc.s

CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.requires

CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.provides: CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.provides

CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o


CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o: CMakeFiles/TinyMuduo.dir/flags.make
CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o: ../EPollPoller.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o -c /home/home/桌面/TinyMuduo/EPollPoller.cc

CMakeFiles/TinyMuduo.dir/EPollPoller.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyMuduo.dir/EPollPoller.cc.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/home/桌面/TinyMuduo/EPollPoller.cc > CMakeFiles/TinyMuduo.dir/EPollPoller.cc.i

CMakeFiles/TinyMuduo.dir/EPollPoller.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyMuduo.dir/EPollPoller.cc.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/home/桌面/TinyMuduo/EPollPoller.cc -o CMakeFiles/TinyMuduo.dir/EPollPoller.cc.s

CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.requires:

.PHONY : CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.requires

CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.provides: CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.requires
	$(MAKE) -f CMakeFiles/TinyMuduo.dir/build.make CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.provides.build
.PHONY : CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.provides

CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.provides.build: CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o


# Object files for target TinyMuduo
TinyMuduo_OBJECTS = \
"CMakeFiles/TinyMuduo.dir/TcpServer.cc.o" \
"CMakeFiles/TinyMuduo.dir/Logger.cc.o" \
"CMakeFiles/TinyMuduo.dir/Poller.cc.o" \
"CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o" \
"CMakeFiles/TinyMuduo.dir/Timestamp.cc.o" \
"CMakeFiles/TinyMuduo.dir/EventLoop.cc.o" \
"CMakeFiles/TinyMuduo.dir/Thread.cc.o" \
"CMakeFiles/TinyMuduo.dir/InetAddress.cc.o" \
"CMakeFiles/TinyMuduo.dir/Channel.cc.o" \
"CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o" \
"CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o" \
"CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o"

# External object files for target TinyMuduo
TinyMuduo_EXTERNAL_OBJECTS =

../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/TcpServer.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/Logger.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/Poller.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/Timestamp.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/EventLoop.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/Thread.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/InetAddress.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/Channel.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/build.make
../lib/libTinyMuduo.so: CMakeFiles/TinyMuduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/home/桌面/TinyMuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX shared library ../lib/libTinyMuduo.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TinyMuduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TinyMuduo.dir/build: ../lib/libTinyMuduo.so

.PHONY : CMakeFiles/TinyMuduo.dir/build

CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/TcpServer.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/Logger.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/Poller.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/DefaultPoller.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/Timestamp.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/EventLoop.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/Thread.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/InetAddress.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/Channel.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/EventLoopThread.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/CurrentThread.cc.o.requires
CMakeFiles/TinyMuduo.dir/requires: CMakeFiles/TinyMuduo.dir/EPollPoller.cc.o.requires

.PHONY : CMakeFiles/TinyMuduo.dir/requires

CMakeFiles/TinyMuduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TinyMuduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TinyMuduo.dir/clean

CMakeFiles/TinyMuduo.dir/depend:
	cd /home/home/桌面/TinyMuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/home/桌面/TinyMuduo /home/home/桌面/TinyMuduo /home/home/桌面/TinyMuduo/build /home/home/桌面/TinyMuduo/build /home/home/桌面/TinyMuduo/build/CMakeFiles/TinyMuduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TinyMuduo.dir/depend

