#include <string.h>
#include <stdio.h>

const int bufferSize = 0xff;
static char buffer[bufferSize];

extern __attribute__((visibility("default"))) int init(int input)
{
	char *some_str = "The value of x is:";
	if (input == 1)
	{
		some_str = "hallo welt";
	}
	memset(buffer, 0, bufferSize);
	sprintf(buffer, "%s %i", some_str, input);
	return (int)buffer;
}
