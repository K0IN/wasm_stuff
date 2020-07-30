(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (param i32 i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (result i32)))
  (import "env" "memory" (memory $env.memory 2 2))
  (import "env" "__indirect_function_table" (table $env.__indirect_function_table 2 funcref))
  (import "env" "console_log" (func $console_log (type $t0)))
  (import "env" "setTimeout" (func $setTimeout (type $t1)))
  (import "env" "new_object" (func $new_object (type $t0)))
  (import "env" "print_object" (func $print_object (type $t2)))
  (func $callback (type $t3) (result i32)
    i32.const 1024
    call $console_log
    drop
    i32.const 0)
  (func $init (type $t3) (result i32)
    i32.const 1050
    call $console_log
    drop
    i32.const 1
    i32.const 5000
    call $setTimeout
    drop
    i32.const 1079
    call $new_object
    call $print_object
    i32.const 1)
  (global $g0 (mut i32) (i32.const 66640))
  (export "init" (func $init))
  (elem $e0 (i32.const 1) $callback)
  (data $d0 (i32.const 1024) "callback just got called!\00WASM::console_log: Hi from C\00test value\00"))
