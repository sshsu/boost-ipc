#include"ipc.h"
#include<iostream>
       
using namespace std;

                                
void creator()
{
	cout << "Creator" << endl;
 
	// 删除遗留的共享内存
	bip::shared_memory_object::remove("MySharedMemory");
 
	// 构建新的托管共享内存区
	bip::managed_shared_memory segment(bip::create_only,
                                        "MySharedMemory",  //segment name
                                        65536 * 1024 * 10);
 
	// 定义托管共享内存区的分配器
	const MyIPCHandleAllocatorT alloc_inst(segment.get_segment_manager());
 
	try
	{
        // 创建共享内存中的用于传递IPCHandleT的无锁队列
        IPCHandleMwMrQueueT *pMyIPCHandleQueue = 
        segment.construct<IPCHandleMwMrQueueT>("MyIPCHandleQueue")(alloc_inst);
	}
	catch (exception &e)
	{
		cout << e.what() << endl;
	}
 
	cout << "Creator is waiting here..." << endl;
//	system("pause");

}


int main(){
	creator();
	return 0;
}
