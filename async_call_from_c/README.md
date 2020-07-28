# Call async Javascript from C

## Introduction 

Many modern javascript Api's are asynchronous so the only way to call them is to start a async execution and wait for a callback OR yield the execution until the async task return. 
The second option seems like the better solution, since it is much easier in terms of state and variable management. 
The problem is we cant wait in C for js since we are in the main thread, one obliviously solution would be just to run wasm in a off thread. But there might not be all apis available. 
What I came up with to tackle the problem is using async.h so we can have resumable c functions.
This might not work for big projects since you would have to keep track of all states and also manage the execution flow.

Note: `async.h` uses stackless coroutines

---
JS environment

`fetch` will start the js fetch and returns a handle to the js object
`do_fetch` will poll the promise until it resolves 

```JS
fetch: (str_ptr) => {
    const url = stringFromPtr(memory, str_ptr);
    const pollObject = new FetchRoutine(url);
    const jsObjectHandle = newHandle(pollObject);
    return jsObjectHandle;
}
do_fetch: (handle) => {
    const value = getObjectByHandle(handle)?.getValue();
    if (value) return value;
    return 0;
}
```
C side
```C
async example(fetch_state_t *state) {
    async_begin(state);
        await(state->fetch_handle = fetch("hello.txt"));
        await(state->response_length = do_fetch(state->fetch_handle));
    async_end;
}
```

---

## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

## Files

What|Description
--------|-----------
`main.c` | this uses async.h for async functions to fetch [hello.txt](hello.txt) and return its length
`main.js` | this file provides object handling, initialization of the wasm and the main event loop

## Example

[live example](https://k0in.github.io/wasm_stuff/async_call_from_c/index.html)

## credits

credits to the awesome [async.h](https://github.com/naasking/async.h) C library by naasking