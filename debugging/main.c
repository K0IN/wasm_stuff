extern void printnumber(int x);		// example that you can debug c and js

int example(int x) {
	int i = x;
	for (int ctr = 0; ctr < x; ctr++) 
	{
		i += x + ctr;
		printnumber(i);
	}
	return i;
}

extern __attribute__((visibility("default"))) int runtime()
{
	int tmp = 0;
	for(int i = 0; i < 10; i++)
	{
		tmp += example(i);
	}
	return tmp;
}