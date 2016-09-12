#include<iostream>
using std::cin;
using std::cout;
int main ()
{
	int num = 0;
	cout<<"请输入一个正整数：";
	cin>>num; 
    if(cin>>num&&num>0)
    	for(int i=1;i<=num;++i)
    		cout<<i<<"I LOVE SZUTIC"<<std::endl;
    else
    	cout<<"I LOVE 深大";

	return 0;
}
