# Call async Javascript from C

## Introduction 

Using C++ Coroutines to call async Javascript functions

---
JS environment

`fetch` will start the js fetch and returns a handle to the js object
`do_fetch` will poll the promise until it resolves 

C side
```C
resumable foo(int x)
{
    while (true)
    {
        int f = do_fetch(x); // returns 0 if not finished or length of response when done
        if (f)
        {
            // when f is != 0 coro returns length of the fetch
            co_return f;
        }
        // when f is null then jump back to javascript
        co_await std::experimental::coroutines::suspend_always();
    }
}

extern "C" __attribute__((visibility("default"))) int runtime()
{
    static int handle = fetch();
    resumable x = foo(handle);
    return x.return_val();
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
`main.cpp` | exports eventloop `runtime` and performs the fetch 
`main.js` | provides imports
`coroutine` | Implementation of the coro `coroutine_handle` and `coroutine_traits` [source](https://github.com/emsr/cxx_coroutines)

## Example

[live example](https://k0in.github.io/wasm_stuff/coro_cpp/index.html)
Please note that Malloc is just a mock example(do not use it in any project)

## credits

[implementation of coroutine header](https://github.com/emsr/cxx_coroutines)
[great writeup](https://blog.panicsoftware.com/your-first-coroutine)
