# Call async Javascript from C

## Introduction 

Many modern javascript Api's are asynchronous so the only way to call them is to start a async execution and wait for a callback OR yield the execution until the async task return. The second option seems like the better solution, since it is much easier in terms of state and variable management. The problem is we cant wait in C for js since we are in the main thread, one obliviously solution would be just to run wasm in a off thread. But there might not be all apis available. What I came up with to tackle the problem is using async.h so we can have resumable c functions.
This might not work for big projects since you would have to keep track of all states and also manage the execution flow.

## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

## Files

What|Description
--------|-----------
main.c | this uses async.h for this will fetch [hello.txt](hello.txt) and return its length
main.js | this file provides object storage, initialization of the wasm, main loop to wasm

## Example

[example](https://k0in.github.io/wasm_stuff/async_call_from_c/index.html)

## credits

credits to the awesome [async.h](https://github.com/naasking/async.h) C library by naasking