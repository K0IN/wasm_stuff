(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (result i32)))
  (import "env" "fetch" (func $env.fetch (type $t0)))
  (import "env" "do_fetch" (func $env.do_fetch (type $t0)))
  (func $f2 (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p0
              i32.load
              local.tee $l1
              i32.const -18
              i32.add
              local.tee $l2
              i32.const 1
              i32.le_u
              br_if $B4
              local.get $l1
              i32.const 1
              i32.eq
              br_if $B1
              local.get $p0
              i32.const 18
              i32.store
              br $B3
            end
            block $B5
              local.get $l2
              br_table $B3 $B5 $B3
            end
            local.get $p0
            i32.load offset=4
            local.set $l1
            br $B2
          end
          local.get $p0
          i32.const 1024
          call $env.fetch
          local.tee $l1
          i32.store offset=4
          local.get $l1
          i32.eqz
          br_if $B0
          local.get $p0
          i32.const 19
          i32.store
        end
        local.get $p0
        local.get $l1
        call $env.do_fetch
        local.tee $l1
        i32.store offset=8
        local.get $l1
        i32.eqz
        br_if $B0
        i32.const 1
        local.set $l1
        local.get $p0
        i32.const 1
        i32.store
      end
      local.get $l1
      return
    end
    i32.const 0)
  (func $runtime (type $t1) (result i32)
    block $B0
      i32.const 0
      i32.load8_u offset=1036
      br_if $B0
      i32.const 0
      i32.const -1
      i32.store offset=1048
      i32.const 0
      i32.const 1
      i32.store8 offset=1036
      i32.const 0
      i32.const 0
      i32.store offset=1040
    end
    i32.const 1040
    call $f2
    drop
    i32.const 0
    i32.load offset=1048)
  (table $T0 1 1 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 66592))
  (export "memory" (memory 0))
  (export "runtime" (func $runtime))
  (data $d0 (i32.const 1024) "hallo.txt\00"))
