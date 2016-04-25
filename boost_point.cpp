#include <memory>
#include <string>
#include <iostream>
#include <boost/scoped_ptr.hpp>
#include <boost/scoped_array.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/smart_ptr.hpp>

using namespace std;

class simple
{
private:
	  size_t m_nsize;
public:
	simple()
	{
	   m_nsize =10 ;
	   cout << "simple created!" << endl;
	}

	~simple()
	{
	   cout << "simple destoryed!" << endl;
	}

	void foo()
	{
      cout << "===============foo()==============="<< endl;
	  cout << "foo() is called  ,m_nsize is: " << m_nsize << endl;
	  m_nsize++;

	}
};
void testPtr()
{
	boost::shared_ptr<simple> pSimple(new simple);
	boost::weak_ptr<simple> pSimple2(pSimple);
    pSimple.reset();
	boost::shared_ptr<simple> pp = pSimple;
    boolalpha(std::cout); std::cout << "Simple class situation :"<<pSimple2._empty()<<endl;
    pSimple.reset();
	if (pSimple2.lock())
	{
		pSimple2.lock()->foo();
	}
	else
		cout << "SIMPLE is gone!!"<< endl;
	try
	{
		boost::shared_ptr<simple> pSimple3(pSimple2);
	    pSimple3->foo();
	}catch(const boost::bad_weak_ptr &)
	{
	  cout << "simple is gone,can't construct sharedptr!!" <<endl;
	}

	cout << "exit shared_ptr()!!" <<endl;
}

void test2()
{
	boost::weak_ptr<double> w;
	if (w.expired())
	{
		 std::cout << "No associated resource!" << std::endl;
	}
	else
	{
		std::cout << "Has associated resource!" << std::endl;
	}


    boost::shared_ptr<double> sp(new double(0.99999932));
    std::cout << "Ref count : " << sp.use_count()<< std::endl;
 //   sp.reset();


    boost::shared_ptr<double> sp2 = sp;
    std::cout <<"sp2 use count :" <<sp2.use_count() << std::endl;

    boost::shared_ptr<double> sp3(sp);
    std::cout <<"sp3 use count :" <<sp3.use_count() << std::endl;

    w = sp;
    if (w.expired())
	{
		 std::cout << "No associated resource!" << std::endl;
	}
	else
	{
		std::cout << "Has associated resource!" << std::endl;
	}

    std::cout <<"w use count :" <<w.lock().use_count() << std::endl;

}

int main()
{
   testPtr();
   cout << "exit main()" << endl;
}
