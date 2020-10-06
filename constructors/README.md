# Call async Javascript from C

## Introduction 

WASM code has no runtime, so it cant just call constructors(since they __should__ run befor the main function).
Clang has a function called `__wasm_call_ctors`(that can be exported via link flag: `--export __wasm_call_ctors`).
That function will init global variables and call constructors.

---
JS environment

`__wasm_call_ctors` is the exported function that will call construcotrs and init global variables

```JS
const {exports: {__wasm_call_ctors} } = await WebAssembly.instantiate(module, { env });    
__wasm_call_ctors();
```

C side
```C
class Test {
    private: 
        int example; 
    public:	
        Test(int x) { this->example = x; } 
        int getExample() { return this->example; } 
};

Test exampleConstructor(1337);

```

---

## Requirements

> Make

> Clang 9 or above

> A Webserver [you can find a webserver here (py3)](../server4.py)

## Files

What|Description
--------|-----------
`main.cpp` | this has a cpp class with a constructor to show case that the constructor is called
`main.js` | calls constructors and returun a example value from a global object

## Example

[live example](https://k0in.github.io/wasm_stuff/constructors/index.html)
