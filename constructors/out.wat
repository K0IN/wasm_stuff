(module
  (type $t0 (func))
  (type $t1 (func (param i32 i32) (result i32)))
  (type $t2 (func (result i32)))
  (type $t3 (func (param i32) (result i32)))
  (func $__wasm_call_ctors (type $t0)
    call $_GLOBAL__sub_I_main.cpp)
  (func $__cxx_global_var_init (type $t0)
    (local $l0 i32) (local $l1 i32)
    i32.const 1024
    local.set $l0
    i32.const 1337
    local.set $l1
    local.get $l0
    local.get $l1
    call $Test::Test_int_
    drop
    return)
  (func $Test::Test_int_ (type $t1) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    local.set $l2
    i32.const 16
    local.set $l3
    local.get $l2
    local.get $l3
    i32.sub
    local.set $l4
    local.get $l4
    local.get $p0
    i32.store offset=12
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    i32.load offset=12
    local.set $l5
    local.get $l4
    i32.load offset=8
    local.set $l6
    local.get $l5
    local.get $l6
    i32.store
    local.get $l5
    return)
  (func $runtime (type $t2) (result i32)
    (local $l0 i32) (local $l1 i32)
    i32.const 1024
    local.set $l0
    local.get $l0
    call $Test::getExample__
    local.set $l1
    local.get $l1
    return)
  (func $Test::getExample__ (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    i32.load
    local.set $l5
    local.get $l5
    return)
  (func $_GLOBAL__sub_I_main.cpp (type $t0)
    call $__cxx_global_var_init
    return)
  (table $T0 1 1 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "runtime" (func $runtime)))
