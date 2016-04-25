#include <boost/thread.hpp>
#include <iostream>
#include <cstring>
#include <sstream>
#include <queue>

using namespace std;
/*
void Test()

{
   for ( int i = 0; i < 10; i++)
   {
	   cout << i << "-->Test  Function" << endl ;
	   boost::this_thread::yield();
   }
}


class Call
{
private:
	 int m_iter;
public:
	 Call()
	 {
		m_iter = 0;
	 }
	 Call(int iter)
	 {
		 this->m_iter = iter;
	 }
	 Call(const Call &source)
	 {
		 this->m_iter = source.m_iter;
	 }
	 ~Call()
	 {
		 std::cout << "This is END!!!" << std::endl;
	 }

	 Call& operator = (const Call& source)
	 {
		 this->m_iter = source.m_iter;
		 return *this;
	 }
	 static void StaticFunction()
	 {
		 for ( int i = 0; i < 10; i++)
		 {
			 std::cout << i <<" Do your self!" << std::endl;
			 boost::this_thread::yield();
			 ::sleep(3);
		 }
	 }

	 void operator () ()
	 {

		 for ( int i = 0; i < this->m_iter; i++)
		 {
			 cout << i << " Parallel operator()" << endl;
			 boost::this_thread::yield();
		 }
	 }
};


int main()
{
  //boost::thread t(&Call::StaticFunction);
  int number = 5;
  Call c(number);
  boost::thread t(c);
  for ( int i = 0; i < 10; i++)
  {
	 cout << i << " -DO somethings in the main()" << endl;
	// ::sleep(1);
  }
   return 0;
}
*/

/*===========================producder==============================================
string IntToString(int a)
{
	stringstream ss;
	   ss << a;
	   string s = ss.str();
   return s;
}

template <class T>
class SynchronizedQueue
{
private:
	std::queue<T> m_queue;
	boost::mutex m_mutex;
	boost::condition_variable m_cond;
public:
	void Enqueue(const T & data)
	{
		boost::unique_lock<boost::mutex> lock(m_mutex);
		m_queue.push(data);
	    m_cond.notify_one();
	}

	T Dequeue()
	{
		boost::unique_lock<boost::mutex> lock(m_mutex);

		while (m_queue.size() == 0 ) m_cond.wait(lock);

	    T result = m_queue.front();
	    m_queue.pop();
	    return result;
	}

};

int data = 0;
class Producer
{
private :
	int m_id;
	SynchronizedQueue<string> *m_queue;
public :
	Producer( int id, SynchronizedQueue<string> * queue)
    {
		m_id = id;
		m_queue = queue;
    }

	void operator() ()
	{
	//	int data = 0;
		while (true && data < 10)
		{
			string str = "Producer: " + IntToString(m_id) + " data: " + IntToString(data++);
			m_queue->Enqueue(str);

			std::cout << str << std::endl;
			boost::this_thread::sleep(boost::posix_time::seconds(2));
		}
	}
};

class Consumer
{
private:
	int m_id;
	SynchronizedQueue<string>* m_queue;
public:
	Consumer(int id,SynchronizedQueue<string>* queue)
    {
	 m_id = id;
	 m_queue = queue;
   }
   void operator () ()
   {
	   while (1)
	   {
		   std::cout << "Consumer " << IntToString(m_id).c_str()<<" consumed: ("<<m_queue->Dequeue().c_str() << ")" <<endl;
		   boost::this_thread::interruption_point();
	   }
   }
};

int main()
{
   std:: cout << boost::thread::hardware_concurrency()<< "processor/cores detected." << endl<< endl;
   cout << "when threads are running ,press enter to stop" << endl;

   int nrProducer = 5;
   int nrConsumer = 10;

   SynchronizedQueue<string> queue;

   boost::thread_group producers;

   for (int i = 0; i < nrProducer; i++ )
   {
	   Producer p(i, &queue);
	   producers.create_thread(p);
   }

   boost::thread_group consumers;

   for ( int i = 0; i < nrConsumer; i++)
   {
	   Consumer c(i,&queue);
	   consumers.create_thread(c);
   }


   std::getwchar();
   std::getwchar();

   producers.interrupt_all(); producers.interrupt_all();
   consumers.interrupt_all(); producers.interrupt_all();

   return 0;
}
================================consumer==============*/

//Thread Local Storagez这里利用boost::thread_specific_ptr<int>进行局部的拷贝数据，各个线程之修改自己的拷贝，而不会修改全局的变量

boost::thread_specific_ptr<int> threadLocalData;

void CallFunction(int id)
{
    threadLocalData.reset(new int);
    *threadLocalData = 0;

    for ( int i = 0; i < 6; i++)
    {
    	cout << "Thread: " << id << " - Value: " << (*threadLocalData)++ << endl;
    	boost::this_thread::sleep(boost::posix_time::seconds(3));
    }
}

void Function()
{
	 for ( int i = 0; i < 6; i++)
	 {
   std::cout << i<< endl;
	 }
}

int main()
{
	threadLocalData.reset(new int);
	*threadLocalData = 0;
	boost::thread_group threads;
	for ( int i = 0; i < 6; i++)
	{
		if ( i%2 == 0)
		{
		boost::thread *t = new boost::thread(&CallFunction,i);
		threads.add_thread(t);
		}
		else
		{
			boost::thread *t = new boost::thread(&Function);
			threads.add_thread(t);
		}
	}

	threads.join_all();
	cout << "Main - Value:" << (*threadLocalData) << endl;
   return 0;
}

