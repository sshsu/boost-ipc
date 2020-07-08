#pragma once

 
#include <boost/interprocess/managed_shared_memory.hpp>
#include <boost/interprocess/allocators/allocator.hpp>
#include <boost/interprocess/containers/string.hpp>
#include <boost/lockfree/queue.hpp>

namespace bip = boost::interprocess;   //给ipc设置别名


//首先定义共享内存分配器类型
typedef bip::allocator<char, bip::managed_shared_memory::segment_manager> CharAllocator;
typedef bip::basic_string<char, std::char_traits<char>, CharAllocator> shared_string;
 
 
//用于IPCHandle传输
class IPCHandleData {
public:
	 IPCHandleData(const shared_string::allocator_type& al):name(al)
	 {

	 }


	// IPCHandleData(const shared_string::allocator_type& al);
	//~IPCHandleData()
 
	int id;
	__int64_t id64;
	shared_string name;
 
};

//定义共享内存handle类型
typedef bip::managed_shared_memory::handle_t IPCHandleT;
 
//定义该handle的共享内存分配器
typedef bip::allocator<IPCHandleT, 
			bip::managed_shared_memory::segment_manager> 
								MyIPCHandleAllocatorT;
 
//定义基于该IPCHandle以及对应的内存分配器的Queue
typedef boost::lockfree::queue<IPCHandleT,
                                boost::lockfree::capacity<65534>,
                                boost::lockfree::allocator<MyIPCHandleAllocatorT>> 
								IPCHandleMwMrQueueT;