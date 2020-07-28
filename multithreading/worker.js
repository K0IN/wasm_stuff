const table = new WebAssembly.Table({ initial: 5, element: 'anyfunc' });

const imports = {
	env: {
		memoryBase: 0,
		tableBase: 0,
		__indirect_function_table: table,
		startThread: () => console.log("Worker: cant start thread from worker!")
	}
};

onmessage = async (e) => {
	const thread_info = e.data;
	imports.env.memory = thread_info.memory;
	const instance = await WebAssembly.instantiate(thread_info.module, imports)
	const thread_entry_func = table.get(thread_info.thread_entry_ptr)
	thread_entry_func();
	console.log("started thread")
};
