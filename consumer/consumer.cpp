#include"ipc.h"
#include<iostream>
       
using namespace std;


int consumer()
{
	cout << "Consumer" << endl;
 
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
		return 0;
	}
	else
	{
		cout << "find \"MyIPCHandleQueue\"" << endl;
	}
 
	IPCHandleMwMrQueueT *pMyIPCHandleQueue = res.first;
 
	IPCHandleT recvHandle;
	if (pMyIPCHandleQueue->pop(recvHandle))
	{
		cout << "Recv data" << endl;
 
		//接收到消息后，通过handle找到对应的共享内存对象
		IPCHandleData *pIPCHandleData = 
			(IPCHandleData *)segment.get_address_from_handle(recvHandle);
 
		//输出共享内存对象信息
		cout << "recved IPCHandleData :" << endl;
		cout << "id=" << pIPCHandleData->id << endl;
		cout << "id64=" << pIPCHandleData->id64 << endl;
		cout << "name=" << pIPCHandleData->name << endl;
 
		//最终释放该共享内存对象
		segment.destroy_ptr(pIPCHandleData);
	}

	return 0;
}

int main(){
	consumer();
	return 0;
}