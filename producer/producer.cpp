#include"ipc.h"
#include<iostream>
       
using namespace std;


void producer()
{
	cout << "Producer" << endl;
 
	//附接目标共享内存
	bip::managed_shared_memory segment(bip::open_only,
				"MySharedMemory");  //segment name
											
	typedef std::pair<IPCHandleMwMrQueueT *, 
			bip::managed_shared_memory::size_type> ResultT;
	ResultT res = segment.find<IPCHandleMwMrQueueT>("MyIPCHandleQueue");
 
	cout << "res.second=" << res.second << endl;
	if (!res.second)
	{
		cout << "could not find \"MyIPCHandleQueue\"" << endl;
		return;
	}
	else
	{
		cout << "find \"MyIPCHandleQueue\"" << endl;
	}
 
	IPCHandleMwMrQueueT *pMyIPCHandleQueue = res.first;
 
	int id = 1;
	
	//创建匿名共享内存对象，销毁时需要用destroy_ptr
	IPCHandleData *pIPCHandleData =
 		segment.construct<IPCHandleData>
			(bip::anonymous_instance)
				(shared_string::allocator_type(segment.get_segment_manager()));
	pIPCHandleData->id = id;
	pIPCHandleData->id64 = id;
 
	stringstream ss;
	ss << "name-" << id;
	pIPCHandleData->name = ss.str().c_str();
 
	cout << "cur IPCHandleData :" << endl;
	cout << "id=" << pIPCHandleData->id << endl;
	cout << "id64=" << pIPCHandleData->id64 << endl;
	cout << "name=" << pIPCHandleData->name << endl;
 
	//获取共享内存对应的handle
	IPCHandleT curHandle = segment.get_handle_from_address(pIPCHandleData);
	cout << "handle=" << (int)(curHandle) << endl;
 
	//将该handle放入queue中，传递给对端
	pMyIPCHandleQueue->push(curHandle);
 
}

int main(){
	producer();
	return 0;
}