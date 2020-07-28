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

const stringFromPtr = (memory, ptr) => {
    if (ptr == 0) return null;
    let string = "";
    const mem = new Uint8Array(memory.buffer);
    while (ptr < mem.length && mem[ptr] !== 0) {
        const byte = mem[ptr];
        string += String.fromCharCode(byte);
        ptr += 1;
    }
    return string;
}

const sleep_ms = (ms) => new Promise((r, e) => setTimeout(r, ms));

class FetchRoutine {
    constructor(url) {
        this.value = null;
        // simulate some longe fetch time 
        sleep_ms(1000).then(() => fetch(url).then((response) => response.text()).then((text) => this.value = text.length));
    }
    getValue() {
        return this.value;
    }
}

const objects = [null]
const newHandle = (obj) => {
    objects.push(obj);
    return objects.length - 1;
}

const getObjectByHandle = (handle) => {
    return objects[handle];
}

const main = async () => {
    const module = await downloadWasm("out.wasm");
    var mem = null;

    const env = {
        fetch: (str_ptr) => {
            const url = stringFromPtr(mem, str_ptr);
            log(`env::fetch was called with url: ${url}(@${str_ptr})`);
            const pollObject = new FetchRoutine(url);
            const jsObjectHandle = newHandle(pollObject);
            log(`env::fetch created fetch object(id=${jsObjectHandle})`);
            return jsObjectHandle;
        },
        do_fetch: (handle) => {
            const value = getObjectByHandle(handle)?.getValue();
            log(`env::do_fetch polling object(id=${handle}) value=${value}`);
            if (value) return value;
            return 0;
        }
    }
    const {exports: {runtime, memory} } = await WebAssembly.instantiate(module, { env });

    mem = memory;
    
    log("Starting event loop");
    while (true) {
        const response_length = runtime();
        if (response_length > 0) {
            log(`wasm::runtime returned ${response_length}`);
            document.getElementById("got").value = response_length;
            break; // exit the async "event loop" 
        }
        await sleep_ms(100);
    }
    log("Shutting down event loop");
}


main();
