const table = new WebAssembly.Table({ initial: 2, element: 'anyfunc' });

const env = {
	memoryBase: 0,
	tableBase: 0,
	__indirect_function_table: table,
	startThread: () => console.log("Worker: cant start thread from worker!")
};

onmessage = async (e) => {
	const thread_info = e.data;
	env.memory = thread_info.memory;
	await WebAssembly.instantiate(thread_info.module, {env});
	const thread_entry_func = table.get(thread_info.thread_entry_ptr);
	thread_entry_func();
};
