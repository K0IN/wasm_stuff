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
        getDomNode: () => document.getElementById("test"),
        writeToNode: (x, number) => x.innerText = `writeToNode=${number}`,
    };
    const {exports: {runtime} } = await WebAssembly.instantiate(module, { env });
    await new Promise(resolve => setTimeout(resolve, 5000));
    log(`Calling runtime(1337);`);
    runtime(1337);
}

main();
