# Using Javascript from C

## Introduction 

In this example we use a custom preprocessor `compile.js` to extract js function out of meta data in the `C` source.
This gets the advantage that we can easily write warpers for Javascript functions as well as see what a function does.
We can also share our `JS` environment with `C` and even do complex calls, like passing object to `C` and back.

---
The define:
```C
JSIMPORT({
	extern.log(string);
}, int, console_log, char* string)
```
translates to:
```JS
env.console_log = (string_tmp) => {
    const tmpFn = (string) => {
        extern.log(string);
    };
    string_tmp = readString(string_tmp);
    return tmpFn(string_tmp);
};
```
At the current time we only **resolve**

Parameters: `char*`, `const char*`, `jshandle_t`(our type to indicate its a object handle), `functionhandle_t`(our type to indicate its a function handle)

Return: `jshandle_t`

Of cause you can return all basic types without the need of the resolver like: `int`, `float`/ `double` ... but be careful `JS` does not care about signs(`unsigned int` for example)!

---


## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

> Node 

## Files

What|Description
--------|-----------
`compile.js` | This runs after every compilation, and create the glue code¹ dynamically from soruce
`out.js` | This is the output file of the `compile.js` script, this has all util functions in it
`main.c` | Has the `JS` function defines in it that will be complied to the glue code¹
`main.js` | Load the glue code and setup environment

¹glue code = external functions that will be called from `C`

## Example

[live example](https://k0in.github.io/wasm_stuff/js_api/index.html)

## Notes

The compiler is more like a POC/WIP do not use it in production, also it is really strict with syntax of the define / parsing.

At some point I will make a example using [wabt](https://github.com/WebAssembly/wabt)(The WebAssembly Binary Toolkit) to check functions imported by wasm, this will help minify the glue code (through compiling only used functions).

## How to use the define compiler

`node compile.js {output file name} {input files ...}` 

the glue code generates code with a exported function `initEnv(memory, table) => object with [glue] functions`