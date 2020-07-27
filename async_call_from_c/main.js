const downloadWasm = async (path) => {
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

const sleep_ms = (ms) => new Promise((r,e)=>setTimeout(r, ms));

class FetchRoutine {
    constructor(url) {
        this.value = null;
        fetch(url).then((response) => response.text()).then((text) => this.value = text.length);
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

const main = async () => {
    const module = await downloadWasm("out.wasm");
    var memory = null;

    const env = {
        fetch: (str_ptr) => {
            const url = stringFromPtr(memory, str_ptr);
            const pending = new FetchRoutine(url);
            return newHandle(pending);
        },
        do_fetch: (handle) => {
            const value = objects[handle].getValue();
            if (value) return value;
            return 0;
        }
    }

    const instance = await WebAssembly.instantiate(module, {env});
    memory = instance.exports.memory;

    while (true){
        const response_length = instance.exports.runtime();
        if (response_length > 0) {
            console.log("wasm returns:", response_length);
            document.getElementById("got").value = response_length;
            return; // exit the async "event loop" 
        }
        await sleep_ms(1000);
    }
}


main();
