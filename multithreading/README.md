# Run a C function in a separate Thread

## Introduction 

This example shows how to use the `WebAssembly.Table` to share functions between threads(Main to Worker).
Since we can execute it in a off thread we can do any blocking code/operation.

---
`startThread` will take a index on the `WebAssembly.Table` and post it to a new spawned `WebWorker` which will execute the function.

C side
```C
typedef void (*thread_entry_ptr_t)(void);
extern int startThread(thread_entry_ptr_t func);
~~~~~~
startThread(worker_thread_function);
~~~~~~
```

---

## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

## Files

What|Description
--------|-----------
main.c | this starts the thread 
main.js | this file provides the tread creation api, initialization of the wasm and the read loop for the gui

## Example

[example](https://k0in.github.io/wasm_stuff/multithreading/index.html)

## Notes 

This only works on Chrome time writing, [Firefox status](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer/Planned_changes)