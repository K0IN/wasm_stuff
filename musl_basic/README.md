# Run a C function in a separate Thread

## Introduction 

This is a example using musl, a `libc` to use all that sweet c std lib functions like `sprintf`, string operations there are other ports available online that are more feature complete then this one. 
This just shows that you can use `sprintf`.

How to compile
1. compile musl (clang-10 example)
    `cd musl`
    `AR=llvm-ar-10 CFLAGS="-O0 -fvisibility=default --target=wasm32" CC=clang-10 RANLIB=llvm-ranlib-10 ./configure --disable-shared --target=wasm32`
    `make`

2. compile our library with static linked libc
    `make`

---
```C
int init(int input)
{
    char *some_str = "The value of x is:";
    if (input == 1)
    {
        some_str = "hallo welt";
    }
    memset(buffer, 0, bufferSize);
    sprintf(buffer, "%s %i", some_str, input);
    return (int)buffer;
}
```

The Problem with this approach is that functions like `printf`/`sprintf` uses *a lot* of system calls (or at least pulling them without usage since there are runtime dependent) this will blow up your application size.

---

## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

## Files

What|Description
--------|-----------
main.c | Calls sprintf to show off
main.js | calling into wasm (not importent) 
musl/ | is a fork of [musl libc](https://musl.libc.org/) with some arch fixed for wasm 

## Example

[example](https://k0in.github.io/wasm_stuff/musl_basic/index.html)

## Note 

`malloc`, `free` does not work! 
and also no threading, ipc, networking, ...
**DO NOT USE THIS THIS IS JUST A EXAMPLE!**

## credits 

This uses [musl libc](https://musl.libc.org/) all credits to them great job! (I used it with some modifications I'm so sorry but I do not remember where I got it tho)