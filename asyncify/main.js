import {instantiate} from "./asyncify.mjs";

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
    const wasmFetch = await fetch(path);
    const wasmBinary = await wasmFetch.arrayBuffer();
    const wasmModule = await WebAssembly.compile(wasmBinary);
    return wasmModule;
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

const main = async () => {
    const module = await downloadWasm("out.wasm");
    var mem = null;

    const env = {
        fetch: async (char_ptr) => {
            const url = stringFromPtr(mem, char_ptr);
            log(`Fetching: ${url}`);
            await sleep_ms(1000);
            const response = await fetch(url);
            const text = await response.text();
            return text.length;
        }
    }
    const {exports: {runtime, memory} } = await instantiate(module, {env});

    mem = memory;
    
    log(`calling C`);
    const response_length = runtime();
    log(`returned: ${response_length}`);
    log(`Promise resolved to: ${await response_length}`);        

}


main();
