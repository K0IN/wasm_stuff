# Call async Javascript from C

## Introduction 

## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

## Files

What|Description
--------|-----------
main.c | this uses async.h for this will fetch [hello.txt](hello.txt) and return its length
main.js | this file provides object storage, initialization of the wasm, main loop to wasm

## credits

credits to the awesome [async.h](https://github.com/naasking/async.h) C library by naasking