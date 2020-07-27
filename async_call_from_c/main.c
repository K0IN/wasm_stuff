#include "async.h"

typedef int handle_t;

extern handle_t fetch(const char* url);
extern int do_fetch(handle_t handle); // do_fetch returns 0 if not finished or > 0 for the length of the fetched content

typedef struct { 
    async_state;
    handle_t fetch_handle;
	int response_length;
} fetch_state_t;

fetch_state_t pt;

async example(fetch_state_t *pt) {
    async_begin(pt);
	handle_t i;
	await(pt->fetch_handle = fetch("hallo.txt"));
	await(pt->response_length = do_fetch(pt->fetch_handle));
	// you would need to clean up fetch_handle here and stuff but this is a simple example ;)
    async_end;
}

extern __attribute__((visibility("default"))) int runtime()
{
	static int init = 0;
	if(!init){	
		async_init(&pt);
		pt.response_length = -1;
		init = 1;
	}
	example(&pt);	
	return pt.response_length;
}