# Call async Javascript from C

## Introduction 

This uses Binaryen asyncify to transform the wasm file so it can call async wasm functions.
This approach is easier to understand then [the async.h way](/async_call_from_c/README.md) but it will blow up your wasm file size, since it need to create a way to get to every extern call.
If you want to get small wasm file sizes try to avoid external calls as much as possible.
Also if you want to know how to keep size a little bit smaller read the docs of [Binaryen / asyncify](https://github.com/WebAssembly/binaryen/blob/master/src/passes/Asyncify.cpp), for example you can whitelist imported functions that can be called synchronous, without applying the transformation.

---
JS environment

`fetch` will start the js fetch and returns the length of the fetched file

```JS
fetch: async (char_ptr) => {
    const url = stringFromPtr(mem, char_ptr)
    await sleep_ms(1000);
    const response = await fetch(url);
    const text = await response.text();
    return text.length;
}
```
C side
```C
extern int fetch();

int runtime()
{
    int length = fetch("hello.txt");	
    return length;
}
```

---

## Requirements

> Make

> Clang 9 or above

> [Binaryen / wasm-opt](https://github.com/WebAssembly/binaryen)

> A Webserver [you can find a webserver here (py3)](../server4.py)

> Make sure that the env variable is set: export WASMOPT=wasm-opt

## Files

What|Description
--------|-----------
`main.c` | this uses async.h for async functions to fetch [hello.txt](hello.txt) and return its length
`main.js` | this file provides object handling, initialization of the wasm and the main event loop
`asyncify.mjs` | This is just a fork of google [asyncify standalone](https://github.com/GoogleChromeLabs/asyncify) but with auto detection of `__data_end`
## Example

[live example](https://k0in.github.io/wasm_stuff/asyncify/index.html)

## credits

credits to the awesome [asyncify standalone](https://github.com/GoogleChromeLabs/asyncify) JS library by Google