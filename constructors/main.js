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

const main = async () => {
    const module = await downloadWasm("out.wasm");
    const env = {};
    const {exports: {runtime, __wasm_call_ctors} } = await WebAssembly.instantiate(module, { env });    
    log("Calling constructors..");
    __wasm_call_ctors();
    const exampleValue = runtime();
    log(`wasm::runtime returned ${exampleValue}`);
}


main();
