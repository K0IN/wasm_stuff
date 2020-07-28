typedef void (*thread_entry_ptr_t)(void);

extern int startThread(thread_entry_ptr_t func);

static volatile unsigned int i = 0;

void worker_thread()
{
	while (1)
	{
		i += 1;
	}
}

extern __attribute__((visibility("default"))) int read()
{
	return i;
}

extern __attribute__((visibility("default"))) int init()
{
	return startThread(worker_thread);
}
