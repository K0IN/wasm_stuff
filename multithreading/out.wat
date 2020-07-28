(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func))
  (type $t2 (func (result i32)))
  (import "env" "memory" (memory $env.memory 2 2 shared))
  (import "env" "__indirect_function_table" (table $env.__indirect_function_table 2 funcref))
  (import "env" "startThread" (func $startThread (type $t0)))
  (func $__wasm_init_memory (type $t1)
    i32.const 1028
    i32.const 0
    i32.const 1
    i32.atomic.rmw.cmpxchg
    if $I0
      i32.const 1028
      i32.const 1
      i64.const -1
      i32.atomic.wait
      drop
    else
      i32.const 1024
      i32.const 0
      i32.const 4
      memory.init $d0
      i32.const 1028
      i32.const 2
      i32.atomic.store
      i32.const 1028
      i32.const -1
      atomic.notify
      drop
    end
    data.drop $d0)
  (func $worker_thread (type $t1)
    loop $L0
      i32.const 0
      i32.const 0
      i32.load offset=1024
      i32.const 1
      i32.add
      i32.store offset=1024
      br $L0
    end)
  (func $read (type $t2) (result i32)
    i32.const 0
    i32.load offset=1024)
  (func $init (type $t2) (result i32)
    i32.const 1
    call $startThread)
  (global $g0 (mut i32) (i32.const 66576))
  (export "read" (func $read))
  (export "init" (func $init))
  (start 1)
  (elem $e0 (i32.const 1) $worker_thread)
  (data $d0 "\00\00\00\00"))
