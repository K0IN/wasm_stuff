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

const sleep_ms = (ms) => new Promise((r, e) => setTimeout(r, ms));
const handles = [null]
const main = async () => {
    const module = await downloadWasm("out.wasm");
    var mem = null;

    const env = {
        fetch: () => {
            handles.push(new class {
                constructor() {
                    this.status = false;
                    fetch("main.js").then(r => r.text()).then(r => { this.status = r; })
                }
            })
            return handles.length - 1;
        },
        do_fetch: (id) => {
            if (handles[id] && handles[id].status) {
                return handles[id].status.length;
            }
            return 0;
        },
    }

    const { exports: { runtime, memory } } = await WebAssembly.instantiate(module, { env });

    mem = memory;

    log("Starting event loop");
    while (1) {
        const response_length = runtime();
        if (response_length != 0) {
            log(`response length: ${response_length}`);
            break;
        }
        await sleep_ms(1);
    }
}


main();
