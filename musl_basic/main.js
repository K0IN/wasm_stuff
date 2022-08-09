function log(txt, liId = null) {
    const consoleHandle = document.querySelector('#console');
    const existingLine = document.getElementById(liId);
    const newLine = existingLine || document.createElement("li");
    const lineContent = (typeof txt === 'string') ? txt : JSON.stringify(txt, null, 4);
    newLine.innerText = lineContent;
    if (liId) newLine.id = liId
    if (!existingLine) consoleHandle.appendChild(newLine);
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

const downloadWasm = async (path) => {
    log(`downloading wasm file: '${path}'`);
    const wasmFetch = await fetch(path);
    const wasmBinary = await wasmFetch.arrayBuffer();
    const wasmModule = await WebAssembly.compile(wasmBinary);
    return wasmModule;
}

const main = async () => {
    const module = await downloadWasm("out.wasm");
    // none of this will be called by our example
    const env = {
        __syscall4: () => { throw Exception("NYI") },
        __syscall3: () => { throw Exception("NYI") },
        __extenddftf2: () => { throw Exception("NYI") },
        __trunctfsf2: () => { throw Exception("NYI") },
        __trunctfdf2: () => { throw Exception("NYI") },
        __netf2: () => { throw Exception("NYI") },
        __multf3: () => { throw Exception("NYI") },
        __floatsitf: () => { throw Exception("NYI") },
        __subtf3: () => { throw Exception("NYI") },
        __addtf3: () => { throw Exception("NYI") },
        __fixtfsi: () => { throw Exception("NYI") },
        __fixunstfsi: () => { throw Exception("NYI") },
        __floatunsitf: () => { throw Exception("NYI") },
        __divtf3: () => { throw Exception("NYI") },
    };

    const { exports: { init, memory } } = await WebAssembly.instantiate(module, { env });
    log(`init(0) returned address: ${init(0)} = '${stringFromPtr(memory, init(0))}'`);
    log(`init(1) returned address: ${init(1)} = '${stringFromPtr(memory, init(1))}'`);
}

main();
