# WASM Collection

## What is this?

This is a collection of some WebAssembly experiments I did.
It's meant to teach others, not to do high level code.

Every experiment has a working example hosted on github pages, see description(Readme) of the experiment.

## What we got

What|Description
--------|-----------
[Simple call async JS from C [C lib]](/async_call_from_c/README.md) | using async `JS` functions from `C`
[Simple multithreading](/multithreading/README.md) | starting a `C` function from `C` in a other thread
[Simple libc](/musl_basic/README.md) | using libc from to use `C` standard functions
[Simple js api](/js_api/README.md) | using a custom `JS` compiler to auto generate your glue code
[Using asyncify to call async JS from C](/asyncify/README.md) | Asyncify to call async `JS` functions from `C`
[Using Chrome to debug WASM](/debugging/README.md) | Using `DWARF` to debug `WASM`
[Using CPP constructors](/constructors/README.md) | Using constructors and give `C++` runtime to init global data
[Using CPP coroutines](/coro_cpp/README.md) | Using `C++` coroutines to call async `js` functions

## QA

todo

## Other info

I used clang 10 for every experiment if you use a other version you might need to change the clang version in the Makefiles

Also feel free to contribute your own findings ;)