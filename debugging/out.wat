(module
  (type $t0 (func (param i32)))
  (type $t1 (func (param i32) (result i32)))
  (type $t2 (func (result i32)))
  (import "env" "printnumber" (func $printnumber (type $t0)))
  (func $example (type $t1) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    i32.const 0
    local.set $l4
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l5
    local.get $l3
    local.get $l5
    i32.store offset=8
    local.get $l3
    local.get $l4
    i32.store offset=4
    block $B0
      loop $L1
        local.get $l3
        i32.load offset=4
        local.set $l6
        local.get $l3
        i32.load offset=12
        local.set $l7
        local.get $l6
        local.set $l8
        local.get $l7
        local.set $l9
        local.get $l8
        local.get $l9
        i32.lt_s
        local.set $l10
        i32.const 1
        local.set $l11
        local.get $l10
        local.get $l11
        i32.and
        local.set $l12
        local.get $l12
        i32.eqz
        br_if $B0
        local.get $l3
        i32.load offset=12
        local.set $l13
        local.get $l3
        i32.load offset=4
        local.set $l14
        local.get $l13
        local.get $l14
        i32.add
        local.set $l15
        local.get $l3
        i32.load offset=8
        local.set $l16
        local.get $l16
        local.get $l15
        i32.add
        local.set $l17
        local.get $l3
        local.get $l17
        i32.store offset=8
        local.get $l3
        i32.load offset=8
        local.set $l18
        local.get $l18
        call $printnumber
        local.get $l3
        i32.load offset=4
        local.set $l19
        i32.const 1
        local.set $l20
        local.get $l19
        local.get $l20
        i32.add
        local.set $l21
        local.get $l3
        local.get $l21
        i32.store offset=4
        br $L1
      end
    end
    local.get $l3
    i32.load offset=8
    local.set $l22
    i32.const 16
    local.set $l23
    local.get $l3
    local.get $l23
    i32.add
    local.set $l24
    local.get $l24
    global.set $g0
    local.get $l22
    return)
  (func $runtime (type $t2) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32)
    global.get $g0
    local.set $l0
    i32.const 16
    local.set $l1
    local.get $l0
    local.get $l1
    i32.sub
    local.set $l2
    local.get $l2
    global.set $g0
    i32.const 0
    local.set $l3
    local.get $l2
    local.get $l3
    i32.store offset=12
    local.get $l2
    local.get $l3
    i32.store offset=8
    block $B0
      loop $L1
        i32.const 10
        local.set $l4
        local.get $l2
        i32.load offset=8
        local.set $l5
        local.get $l5
        local.set $l6
        local.get $l4
        local.set $l7
        local.get $l6
        local.get $l7
        i32.lt_s
        local.set $l8
        i32.const 1
        local.set $l9
        local.get $l8
        local.get $l9
        i32.and
        local.set $l10
        local.get $l10
        i32.eqz
        br_if $B0
        local.get $l2
        i32.load offset=8
        local.set $l11
        local.get $l11
        call $example
        local.set $l12
        local.get $l2
        i32.load offset=12
        local.set $l13
        local.get $l13
        local.get $l12
        i32.add
        local.set $l14
        local.get $l2
        local.get $l14
        i32.store offset=12
        local.get $l2
        i32.load offset=8
        local.set $l15
        i32.const 1
        local.set $l16
        local.get $l15
        local.get $l16
        i32.add
        local.set $l17
        local.get $l2
        local.get $l17
        i32.store offset=8
        br $L1
      end
    end
    local.get $l2
    i32.load offset=12
    local.set $l18
    i32.const 16
    local.set $l19
    local.get $l2
    local.get $l19
    i32.add
    local.set $l20
    local.get $l20
    global.set $g0
    local.get $l18
    return)
  (table $T0 1 1 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "runtime" (func $runtime)))
