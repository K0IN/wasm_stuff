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

const main = async () => {
    const module = await downloadWasm("out.wasm");
    const env = {
        printnumber: (int) => log(`print_number: ${int}`)   
    };
    const {exports: {runtime} } = await WebAssembly.instantiate(module, { env });
    debugger; // in case you reload you will be traped here with debugger just single step
    const ret = runtime();
    log(`calling C runtime() = ${ret}`);
}


main();
