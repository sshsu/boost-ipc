#cmake 版本检查
cmake_minimum_required (VERSION 2.8)

#项目名字
project (producer)

#设置c++版本
set(CMAKE_CXX_STANDARD 17)

#开启debug
set(CMAKE_BUILD_TYPE "Debug")
#release
#SET(CMAKE_BUILD_TYPE "Release")

#找boost
find_package(Boost REQUIRED)

#设置头文件路径 -I
include_directories("/usr/include")
include_directories("../")
include_directories(${BOOST_INCLUDEDIR})


#将当前目录下所有.c cpp .h .hpp 文件放入  SRC变量中
aux_source_directory(. SOURCES_FILES)

#将所有源文件编译成test
add_executable(producer ${SOURCES_FILES})

#设置要动态连接库的目录
link_directories("/usr/lib") 
link_directories(${BOOST_LIBRARYDIR})


#链接
target_link_libraries(producer pthread -lrt) #链接动态库 libwebsockets.so
