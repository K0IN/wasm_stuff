function log(txt, liId = null) {
    const consoleHandle = document.querySelector('#console');
    const existingLine = document.getElementById(liId);
    const newLine = existingLine || document.createElement("li");
    const lineContent = (typeof txt === 'string') ? txt : JSON.stringify(txt, null, 4);
    newLine.innerText = lineContent;
    if (liId) newLine.id = liId
    if (!existingLine) consoleHandle.appendChild(newLine);
}

const downloadWasm = async (path) => {
    log(`downloading wasm file: '${path}'`);
    const wasm_binary = await fetch(path);
    const bin_buffer = await wasm_binary.arrayBuffer();
    const wasm_module = await WebAssembly.compile(bin_buffer);
    return wasm_module;
}

const sleep_ms = (ms) => new Promise((r, e) => setTimeout(r, ms));

const startThread = (module, memory, thread_entry_ptr) => {
    const thread = new Worker("worker.js");
    const thread_info = {
        thread_entry_ptr,
        memory,
        module
    };
    log(`env::startThread starting thread on cfunction(${thread_entry_ptr})`)
    thread.postMessage(thread_info);
    return 1;
}

const main = async () => {
    const module = await downloadWasm("out.wasm");
    const memory = new WebAssembly.Memory({ initial: 2, shared: true, maximum: 2 });
    const table = new WebAssembly.Table({ initial: 2, element: 'anyfunc' });

    const env = {
        memoryBase: 0,
        tableBase: 0,
        __indirect_function_table: table,
        memory,
        startThread: (entry) => startThread(module, memory, entry)
    };

    const { exports: { init, read}} = await WebAssembly.instantiate(module, { env });

    init();
    
    while(true){
        log(`read() -> ${read()}`, "read_value")
        await sleep_ms(1);
    }

}


main();
