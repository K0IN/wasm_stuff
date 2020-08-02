extern int fetch();

extern __attribute__((visibility("default"))) int runtime()
{
	int length = fetch("hello.txt");	
	return length;
}