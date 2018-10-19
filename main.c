extern int add_data;
extern int add(int a,int b);

extern int sub_data;
extern int sub(int a,int b);

struct jack
{
	int a;
	char b;
	int c;
};
__attribute__((section("first")))
struct jack jj={0x233,0x66,0x888};

int main_data=3;

int main(int argc,char* argv[])
{
	int a,b,c;
	a=add(2,3);
	b=sub(2,3);
	c=add_data+sub_data+main_data;
    return 0;
}
