(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (result i32)))
  (type $t3 (func (param i32) (result i32)))
  (import "env" "fetch" (func $env.fetch (type $t3)))
  (func $runtime (type $t2) (result i32)
    (local $l0 i32) (local $l1 i32)
    global.get $g1
    i32.const 2
    i32.eq
    if $I0
      global.get $g2
      global.get $g2
      i32.load
      i32.const -4
      i32.add
      i32.store
      global.get $g2
      i32.load
      i32.load
      local.set $l0
    end
    block $B1 (result i32)
      global.get $g1
      i32.const 2
      i32.eq
      if $I2 (result i32)
        global.get $g2
        global.get $g2
        i32.load
        i32.const -4
        i32.add
        i32.store
        global.get $g2
        i32.load
        i32.load
      else
        local.get $l1
      end
      i32.eqz
      i32.const 1
      global.get $g1
      select
      if $I3
        i32.const 1024
        call $env.fetch
        local.set $l1
        i32.const 0
        global.get $g1
        i32.const 1
        i32.eq
        br_if $B1
        drop
        local.get $l1
        local.set $l0
      end
      global.get $g1
      i32.eqz
      if $I4
        local.get $l0
        return
      end
      unreachable
    end
    local.set $l1
    global.get $g2
    i32.load
    local.get $l1
    i32.store
    global.get $g2
    global.get $g2
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get $g2
    i32.load
    local.get $l0
    i32.store
    global.get $g2
    global.get $g2
    i32.load
    i32.const 4
    i32.add
    i32.store
    i32.const 0)
  (func $asyncify_start_unwind (type $t1) (param $p0 i32)
    i32.const 1
    global.set $g1
    local.get $p0
    global.set $g2
    global.get $g2
    i32.load
    global.get $g2
    i32.load offset=4
    i32.gt_u
    if $I0
      unreachable
    end)
  (func $asyncify_stop_unwind (type $t0)
    i32.const 0
    global.set $g1
    global.get $g2
    i32.load
    global.get $g2
    i32.load offset=4
    i32.gt_u
    if $I0
      unreachable
    end)
  (func $asyncify_start_rewind (type $t1) (param $p0 i32)
    i32.const 2
    global.set $g1
    local.get $p0
    global.set $g2
    global.get $g2
    i32.load
    global.get $g2
    i32.load offset=4
    i32.gt_u
    if $I0
      unreachable
    end)
  (func $asyncify_stop_rewind (type $t0)
    i32.const 0
    global.set $g1
    global.get $g2
    i32.load
    global.get $g2
    i32.load offset=4
    i32.gt_u
    if $I0
      unreachable
    end)
  (memory $memory 2)
  (global $__data_end i32 (i32.const 1034))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "runtime" (func $runtime))
  (export "__data_end" (global 0))
  (export "asyncify_start_unwind" (func $asyncify_start_unwind))
  (export "asyncify_stop_unwind" (func $asyncify_stop_unwind))
  (export "asyncify_start_rewind" (func $asyncify_start_rewind))
  (export "asyncify_stop_rewind" (func $asyncify_stop_rewind))
  (data $d0 (i32.const 1024) "hello.txt"))
