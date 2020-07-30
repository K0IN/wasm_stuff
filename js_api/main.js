import { initEnv } from "./out.js"

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
    const memory = new WebAssembly.Memory({ initial: 2, maximum: 2 });
    const table = new WebAssembly.Table({ initial: 2, element: 'anyfunc' });

    const env = {
        memoryBase: 0,
        tableBase: 0,
        __indirect_function_table: table,
        memory,
    };
    const externalEnv = initEnv(memory, table, { log }); // we can also share functions, vars with the wrapper that can be accessed through extern[name]

    log(`Loaded glue code functions: ${Object.keys(externalEnv).join(", ")}`);

    Object.assign(env, externalEnv);

    const { exports: { init } } = await WebAssembly.instantiate(module, { env });

    init();
}


main();
