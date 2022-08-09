# WASM Collection

## What is this?

This is a collection of some WebAssembly experiments I did.
It's meant to teach others, not to do high level code.

Every experiment has a working example hosted on github pages, see description(Readme) of the experiment.

## How do i compile this?

you need a version of clang that supports wasm (9 or above)
make sure you got the environment variables set up correctly example (for clang 15):

```bash
export CC=clang-15
export CXX=clang++-15
export LD=wasm-ld-15
```

Note: If clang is installed without version you can drop the version at the end

## What we got

What|Description
--------|-----------
[basic](/basic/README.md) | A simple example on how to compile c to wasm. For more complex examples, see the other examples.
[Simple call async JS from C [C lib]](/async_call_from_c/README.md) | using async `JS` functions from `C`
[Simple multithreading](/multithreading/README.md) | starting a `C` function from `C` in a other thread
[Simple libc](/musl_basic/README.md) | using libc from to use `C` standard functions
[Simple js api](/js_api/README.md) | using a custom `JS` compiler to auto generate your glue code
[Using asyncify to call async JS from C](/asyncify/README.md) | Asyncify to call async `JS` functions from `C`
[Using Chrome to debug WASM](/debugging/README.md) | Using `DWARF` to debug `WASM`
[Using CPP constructors](/constructors/README.md) | Using constructors and give `C++` runtime to init global data
[Using CPP coroutines](/coro_cpp/README.md) | Using `C++` coroutines to call async `js` functions
[Using Reference types](/reference_types/README.md) | Using reference types to pass data between `C` and `JS`
<!-- todos -->
<!-- [Using CPP exceptions](/exceptions/README.md) | Using `C++` exceptions to handle errors -->
<!-- [Using Assembler](/asm/README.md) | Using clang-nm to compile asm to wasm -->
<!-- [Link a static library]() |  -->

## QA

todo

## Other info

I used clang 10 for every experiment if you use a other version you might need to change the clang version in the Makefiles

Also feel free to contribute your own findings ;)
