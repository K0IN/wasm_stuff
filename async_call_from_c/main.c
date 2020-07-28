#include "async.h"

typedef int handle_t;

extern handle_t fetch(const char *url); // fetch starts a async fetch and returns a handle to the polling object
extern int do_fetch(handle_t handle);	// do_fetch returns 0 if not finished or > 0 for the length of the fetched content

typedef struct
{
	async_state;
	handle_t fetch_handle;
	int response_length;
} fetch_state_t;

fetch_state_t state;

async example(fetch_state_t *state)
{
	async_begin(state);
	await(state->fetch_handle = fetch("hello.txt"));
	await(state->response_length = do_fetch(state->fetch_handle));
	// you would need to clean up fetch_handle here and stuff but this is a simple example ;)
	async_end;
}

extern __attribute__((visibility("default"))) int runtime()
{
	static int init = 0;
	if (!init)
	{
		async_init(&state);
		state.response_length = -1;
		init = 1;
	}
	example(&state);
	return state.response_length;
}