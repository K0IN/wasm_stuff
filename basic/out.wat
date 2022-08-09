(module
  (type (;0;) (func (result i32)))
  (func $runtime (type 0) (result i32)
    (local i32)
    i32.const 1337
    local.set 0
    local.get 0
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "runtime" (func $runtime)))
