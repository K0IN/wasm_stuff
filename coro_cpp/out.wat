(module
  (type $t0 (func (param i32) (result i32)))
  (type $t1 (func (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (param i32 i32)))
  (type $t4 (func (param i32 i32) (result i32)))
  (import "env" "do_fetch" (func $do_fetch (type $t0)))
  (import "env" "fetch" (func $fetch (type $t1)))
  (func $malloc_int_ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
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
    i32.const 0
    local.set $l4
    local.get $l4
    i32.load offset=1024
    local.set $l5
    local.get $l3
    local.get $l5
    i32.store offset=8
    local.get $l3
    i32.load offset=12
    local.set $l6
    i32.const 0
    local.set $l7
    local.get $l7
    i32.load offset=1024
    local.set $l8
    local.get $l8
    local.get $l6
    i32.add
    local.set $l9
    i32.const 0
    local.set $l10
    local.get $l10
    local.get $l9
    i32.store offset=1024
    local.get $l3
    i32.load offset=8
    local.set $l11
    local.get $l11
    return)
  (func $free_void*_ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
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
    return)
  (func $operator_new_unsigned_long_ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $malloc_int_
    local.set $l5
    i32.const 16
    local.set $l6
    local.get $l3
    local.get $l6
    i32.add
    local.set $l7
    local.get $l7
    global.set $g0
    local.get $l5
    return)
  (func $operator_new___unsigned_long_ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $malloc_int_
    local.set $l5
    i32.const 16
    local.set $l6
    local.get $l3
    local.get $l6
    i32.add
    local.set $l7
    local.get $l7
    global.set $g0
    local.get $l5
    return)
  (func $operator_delete_void*_ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $free_void*_
    i32.const 16
    local.set $l5
    local.get $l3
    local.get $l5
    i32.add
    local.set $l6
    local.get $l6
    global.set $g0
    return)
  (func $operator_delete___void*_ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $free_void*_
    i32.const 16
    local.set $l5
    local.get $l3
    local.get $l5
    i32.add
    local.set $l6
    local.get $l6
    global.set $g0
    return)
  (func $foo_int_ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32) (local $l40 i32) (local $l41 i32) (local $l42 i32) (local $l43 i32) (local $l44 i32) (local $l45 i32) (local $l46 i32) (local $l47 i32) (local $l48 i32) (local $l49 i32) (local $l50 i32) (local $l51 i32) (local $l52 i32) (local $l53 i32) (local $l54 i32) (local $l55 i32) (local $l56 i32) (local $l57 i32) (local $l58 i32) (local $l59 i32) (local $l60 i32) (local $l61 i32) (local $l62 i32) (local $l63 i32) (local $l64 i32) (local $l65 i32) (local $l66 i32) (local $l67 i32) (local $l68 i32) (local $l69 i32) (local $l70 i32) (local $l71 i32) (local $l72 i32) (local $l73 i32) (local $l74 i32) (local $l75 i32) (local $l76 i32) (local $l77 i32) (local $l78 i32) (local $l79 i32) (local $l80 i32) (local $l81 i32) (local $l82 i32) (local $l83 i32) (local $l84 i32) (local $l85 i32) (local $l86 i32) (local $l87 i32) (local $l88 i32) (local $l89 i32) (local $l90 i32) (local $l91 i32) (local $l92 i32) (local $l93 i32) (local $l94 i32) (local $l95 i32) (local $l96 i32) (local $l97 i32) (local $l98 i32) (local $l99 i32) (local $l100 i32) (local $l101 i32) (local $l102 i32) (local $l103 i32) (local $l104 i32) (local $l105 i32) (local $l106 i32) (local $l107 i32) (local $l108 i32) (local $l109 i32) (local $l110 i32) (local $l111 i32) (local $l112 i32) (local $l113 i32) (local $l114 i32) (local $l115 i32) (local $l116 i32) (local $l117 i32) (local $l118 i32) (local $l119 i32) (local $l120 i32) (local $l121 i32) (local $l122 i32) (local $l123 i32) (local $l124 i32) (local $l125 i32) (local $l126 i32) (local $l127 i32) (local $l128 i32) (local $l129 i32) (local $l130 i32)
    global.get $g0
    local.set $l1
    i32.const 112
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    i32.const 0
    local.set $l4
    i32.const 1
    local.set $l5
    local.get $l3
    local.get $p0
    i32.store offset=100
    local.get $l4
    call $.Lcoro.devirt.trigger
    i32.const 1
    local.set $l6
    local.get $l5
    local.get $l6
    i32.and
    local.set $l7
    local.get $l4
    local.set $l8
    block $B0
      block $B1
        local.get $l7
        br_if $B1
        local.get $l8
        local.set $l9
        local.get $l9
        local.set $l10
        br $B0
      end
      i32.const 72
      local.set $l11
      local.get $l11
      call $operator_new_unsigned_long_
      local.set $l12
      local.get $l12
      local.set $l13
      local.get $l13
      local.set $l14
      local.get $l14
      local.set $l10
    end
    local.get $l10
    local.set $l15
    i32.const 1
    local.set $l16
    i32.const 1
    local.set $l17
    i32.const 2
    local.set $l18
    i32.const 3
    local.set $l19
    local.get $l15
    local.get $l19
    i32.store
    i32.const 1
    local.set $l20
    local.get $l16
    local.get $l20
    i32.and
    local.set $l21
    local.get $l17
    local.get $l18
    local.get $l21
    select
    local.set $l22
    local.get $l15
    local.get $l22
    i32.store offset=4
    i32.const 8
    local.set $l23
    local.get $l15
    local.get $l23
    i32.add
    local.set $l24
    i32.const 16
    local.set $l25
    local.get $l15
    local.get $l25
    i32.add
    local.set $l26
    i32.const 28
    local.set $l27
    local.get $l15
    local.get $l27
    i32.add
    local.set $l28
    i32.const 0
    local.set $l29
    i32.const 1
    local.set $l30
    local.get $l29
    local.get $l30
    i32.and
    local.set $l31
    local.get $l3
    local.get $l31
    i32.store8 offset=99
    local.get $l3
    i32.load offset=100
    local.set $l32
    local.get $l26
    local.get $l32
    i32.store
    local.get $l24
    call $resumable::promise_type::get_return_object__
    local.set $l33
    i32.const 1
    local.set $l34
    local.get $l3
    local.get $l33
    i32.store offset=104
    i32.const 1
    local.set $l35
    local.get $l34
    local.get $l35
    i32.and
    local.set $l36
    local.get $l3
    local.get $l36
    i32.store8 offset=99
    local.get $l24
    call $resumable::promise_type::initial_suspend__
    local.set $l37
    local.get $l28
    local.get $l37
    i32.store
    local.get $l28
    call $resumable::await_ready__
    local.set $l38
    i32.const 1
    local.set $l39
    local.get $l38
    local.get $l39
    i32.and
    local.set $l40
    block $B2
      block $B3
        block $B4
          block $B5
            local.get $l40
            br_if $B5
            i32.const 0
            local.set $l41
            local.get $l15
            local.get $l41
            i32.store8 offset=12
            local.get $l15
            call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
            local.set $l42
            i32.const 36
            local.set $l43
            local.get $l15
            local.get $l43
            i32.add
            local.set $l44
            i32.const 32
            local.set $l45
            local.get $l15
            local.get $l45
            i32.add
            local.set $l46
            i32.const 28
            local.set $l47
            local.get $l15
            local.get $l47
            i32.add
            local.set $l48
            local.get $l15
            local.get $l42
            i32.store offset=36
            local.get $l44
            i32.load
            local.set $l49
            local.get $l46
            local.get $l49
            i32.store
            local.get $l15
            i32.load offset=32
            local.set $l50
            local.get $l48
            local.get $l50
            call $resumable::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
            i32.const 255
            local.set $l51
            i32.const 1
            local.set $l52
            local.get $l52
            br_if $B3
            block $B6
              local.get $l51
              br_table $B5 $B6 $B5
            end
            i32.const 2
            local.set $l53
            local.get $l53
            local.set $l54
            local.get $l54
            local.set $l55
            local.get $l55
            local.set $l56
            br $B4
          end
          i32.const 1
          local.set $l57
          i32.const 28
          local.set $l58
          local.get $l15
          local.get $l58
          i32.add
          local.set $l59
          i32.const 1
          local.set $l60
          local.get $l57
          local.get $l60
          i32.and
          local.set $l61
          local.get $l15
          local.get $l61
          i32.store8 offset=40
          local.get $l59
          call $resumable::await_resume__
          drop
          i32.const 0
          local.set $l62
          i32.const 1
          local.set $l63
          local.get $l62
          local.get $l63
          i32.and
          local.set $l64
          local.get $l15
          local.get $l64
          i32.store8 offset=40
          local.get $l15
          i32.load8_u offset=40
          local.set $l65
          i32.const 1
          local.set $l66
          local.get $l65
          local.get $l66
          i32.and
          local.set $l67
          block $B7
            block $B8
              local.get $l67
              br_if $B8
              loop $L9
                local.get $l15
                i32.load offset=16
                local.set $l68
                local.get $l68
                call $do_fetch
                local.set $l69
                local.get $l15
                local.get $l69
                i32.store offset=44
                local.get $l15
                i32.load offset=44
                local.set $l70
                block $B10
                  local.get $l70
                  i32.eqz
                  br_if $B10
                  local.get $l15
                  i32.load offset=44
                  local.set $l71
                  local.get $l24
                  local.get $l71
                  call $resumable::promise_type::return_value_int_
                  br $B7
                end
                i32.const 48
                local.set $l72
                local.get $l15
                local.get $l72
                i32.add
                local.set $l73
                local.get $l73
                call $std::experimental::coroutines::suspend_always::await_ready__
                local.set $l74
                i32.const 1
                local.set $l75
                local.get $l74
                local.get $l75
                i32.and
                local.set $l76
                block $B11
                  local.get $l76
                  br_if $B11
                  i32.const 1
                  local.set $l77
                  local.get $l15
                  local.get $l77
                  i32.store8 offset=12
                  local.get $l15
                  call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
                  local.set $l78
                  i32.const 56
                  local.set $l79
                  local.get $l15
                  local.get $l79
                  i32.add
                  local.set $l80
                  i32.const 52
                  local.set $l81
                  local.get $l15
                  local.get $l81
                  i32.add
                  local.set $l82
                  i32.const 48
                  local.set $l83
                  local.get $l15
                  local.get $l83
                  i32.add
                  local.set $l84
                  local.get $l15
                  local.get $l78
                  i32.store offset=56
                  local.get $l80
                  i32.load
                  local.set $l85
                  local.get $l82
                  local.get $l85
                  i32.store
                  local.get $l15
                  i32.load offset=52
                  local.set $l86
                  local.get $l84
                  local.get $l86
                  call $std::experimental::coroutines::suspend_always::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
                  i32.const 255
                  local.set $l87
                  i32.const 1
                  local.set $l88
                  local.get $l88
                  br_if $B3
                  block $B12
                    local.get $l87
                    br_table $B11 $B12 $B11
                  end
                  i32.const 2
                  local.set $l89
                  local.get $l89
                  local.set $l90
                  local.get $l90
                  local.set $l91
                  local.get $l91
                  local.set $l56
                  br $B4
                end
                i32.const 48
                local.set $l92
                local.get $l15
                local.get $l92
                i32.add
                local.set $l93
                local.get $l93
                call $std::experimental::coroutines::suspend_always::await_resume__
                br $L9
              end
            end
          end
          local.get $l24
          call $resumable::promise_type::final_suspend__
          local.set $l94
          i32.const 60
          local.set $l95
          local.get $l15
          local.get $l95
          i32.add
          local.set $l96
          local.get $l15
          local.get $l94
          i32.store offset=60
          local.get $l96
          call $resumable::await_ready__
          local.set $l97
          i32.const 1
          local.set $l98
          local.get $l97
          local.get $l98
          i32.and
          local.set $l99
          block $B13
            local.get $l99
            br_if $B13
            i32.const 0
            local.set $l100
            local.get $l15
            local.get $l100
            i32.store
            local.get $l15
            call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
            local.set $l101
            i32.const 68
            local.set $l102
            local.get $l15
            local.get $l102
            i32.add
            local.set $l103
            i32.const 64
            local.set $l104
            local.get $l15
            local.get $l104
            i32.add
            local.set $l105
            i32.const 60
            local.set $l106
            local.get $l15
            local.get $l106
            i32.add
            local.set $l107
            local.get $l15
            local.get $l101
            i32.store offset=68
            local.get $l103
            i32.load
            local.set $l108
            local.get $l105
            local.get $l108
            i32.store
            local.get $l15
            i32.load offset=64
            local.set $l109
            local.get $l107
            local.get $l109
            call $resumable::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
            i32.const 255
            local.set $l110
            i32.const 1
            local.set $l111
            local.get $l111
            br_if $B3
            block $B14
              local.get $l110
              br_table $B13 $B14 $B13
            end
            i32.const 2
            local.set $l112
            local.get $l112
            local.set $l113
            local.get $l113
            local.set $l114
            local.get $l114
            local.set $l56
            br $B4
          end
          i32.const 60
          local.set $l115
          local.get $l15
          local.get $l115
          i32.add
          local.set $l116
          local.get $l116
          call $resumable::await_resume__
          drop
          i32.const 0
          local.set $l117
          local.get $l117
          local.set $l118
          local.get $l118
          local.set $l119
          local.get $l119
          local.set $l56
        end
        local.get $l56
        local.set $l120
        i32.const 0
        local.set $l121
        local.get $l15
        local.set $l122
        local.get $l121
        local.set $l123
        local.get $l122
        local.get $l123
        i32.ne
        local.set $l124
        i32.const 1
        local.set $l125
        local.get $l124
        local.get $l125
        i32.and
        local.set $l126
        block $B15
          local.get $l126
          i32.eqz
          br_if $B15
          local.get $l15
          call $operator_delete_void*_
        end
        local.get $l120
        local.set $l127
        block $B16
          local.get $l127
          br_table $B16 $B2 $B3 $B16
        end
      end
      local.get $l3
      i32.load offset=104
      local.set $l128
      i32.const 112
      local.set $l129
      local.get $l3
      local.get $l129
      i32.add
      local.set $l130
      local.get $l130
      global.set $g0
      local.get $l128
      return
    end
    unreachable)
  (func $.Lcoro.devirt.trigger (type $t2) (param $p0 i32)
    return)
  (func $foo_int___.destroy_ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32) (local $l40 i32) (local $l41 i32) (local $l42 i32) (local $l43 i32) (local $l44 i32) (local $l45 i32) (local $l46 i32) (local $l47 i32) (local $l48 i32) (local $l49 i32) (local $l50 i32) (local $l51 i32) (local $l52 i32) (local $l53 i32) (local $l54 i32) (local $l55 i32) (local $l56 i32) (local $l57 i32) (local $l58 i32) (local $l59 i32) (local $l60 i32) (local $l61 i32) (local $l62 i32) (local $l63 i32) (local $l64 i32) (local $l65 i32) (local $l66 i32) (local $l67 i32) (local $l68 i32) (local $l69 i32) (local $l70 i32) (local $l71 i32) (local $l72 i32) (local $l73 i32) (local $l74 i32) (local $l75 i32) (local $l76 i32) (local $l77 i32) (local $l78 i32) (local $l79 i32) (local $l80 i32) (local $l81 i32) (local $l82 i32) (local $l83 i32) (local $l84 i32) (local $l85 i32) (local $l86 i32) (local $l87 i32) (local $l88 i32) (local $l89 i32) (local $l90 i32) (local $l91 i32) (local $l92 i32) (local $l93 i32) (local $l94 i32) (local $l95 i32) (local $l96 i32) (local $l97 i32) (local $l98 i32) (local $l99 i32) (local $l100 i32) (local $l101 i32) (local $l102 i32)
    i32.const 8
    local.set $l1
    local.get $p0
    local.get $l1
    i32.add
    local.set $l2
    i32.const 0
    local.set $l3
    local.get $p0
    i32.load8_u offset=12
    local.set $l4
    local.get $p0
    i32.load
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.set $l7
    local.get $l6
    local.get $l7
    i32.eq
    local.set $l8
    i32.const 1
    local.set $l9
    local.get $l8
    local.get $l9
    i32.and
    local.set $l10
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $l10
                      br_if $B8
                      i32.const 3
                      local.set $l11
                      local.get $l4
                      local.get $l11
                      i32.and
                      local.set $l12
                      block $B9
                        local.get $l12
                        br_table $B7 $B9 $B7
                      end
                      i32.const 1
                      local.set $l13
                      local.get $l13
                      local.set $l14
                      i32.const 1
                      local.set $l15
                      br $B6
                    end
                    i32.const 1
                    local.set $l16
                    local.get $l16
                    local.set $l17
                    br $B4
                  end
                  i32.const 1
                  local.set $l18
                  i32.const 0
                  local.set $l19
                  local.get $l19
                  br_if $B1
                  block $B10
                    block $B11
                      local.get $l18
                      br_table $B10 $B11 $B10
                    end
                    i32.const 2
                    local.set $l20
                    local.get $l20
                    local.set $l21
                    local.get $l21
                    local.set $l22
                    local.get $l22
                    local.set $l23
                    br $B2
                  end
                  i32.const 1
                  local.set $l24
                  i32.const 28
                  local.set $l25
                  local.get $p0
                  local.get $l25
                  i32.add
                  local.set $l26
                  i32.const 1
                  local.set $l27
                  local.get $l24
                  local.get $l27
                  i32.and
                  local.set $l28
                  local.get $p0
                  local.get $l28
                  i32.store8 offset=40
                  local.get $l26
                  call $resumable::await_resume__
                  drop
                  i32.const 0
                  local.set $l29
                  i32.const 1
                  local.set $l30
                  local.get $l29
                  local.get $l30
                  i32.and
                  local.set $l31
                  local.get $p0
                  local.get $l31
                  i32.store8 offset=40
                  local.get $p0
                  i32.load8_u offset=40
                  local.set $l32
                  i32.const 1
                  local.set $l33
                  local.get $l32
                  local.get $l33
                  i32.and
                  local.set $l34
                  block $B12
                    local.get $l34
                    br_if $B12
                    i32.const 0
                    local.set $l15
                    br $B6
                  end
                  br $B5
                end
                loop $L13
                  block $B14
                    block $B15
                      block $B16
                        block $B17
                          local.get $l15
                          br_table $B17 $B16 $B16
                        end
                        local.get $p0
                        i32.load offset=16
                        local.set $l35
                        local.get $l35
                        call $do_fetch
                        local.set $l36
                        local.get $p0
                        local.get $l36
                        i32.store offset=44
                        local.get $p0
                        i32.load offset=44
                        local.set $l37
                        block $B18
                          local.get $l37
                          i32.eqz
                          br_if $B18
                          local.get $p0
                          i32.load offset=44
                          local.set $l38
                          local.get $l2
                          local.get $l38
                          call $resumable::promise_type::return_value_int_
                          br $B5
                        end
                        i32.const 48
                        local.set $l39
                        local.get $p0
                        local.get $l39
                        i32.add
                        local.set $l40
                        local.get $l40
                        call $std::experimental::coroutines::suspend_always::await_ready__
                        local.set $l41
                        i32.const 1
                        local.set $l42
                        local.get $l41
                        local.get $l42
                        i32.and
                        local.set $l43
                        local.get $l43
                        br_if $B15
                        i32.const 1
                        local.set $l44
                        local.get $p0
                        local.get $l44
                        i32.store8 offset=12
                        local.get $p0
                        call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
                        local.set $l45
                        i32.const 56
                        local.set $l46
                        local.get $p0
                        local.get $l46
                        i32.add
                        local.set $l47
                        i32.const 52
                        local.set $l48
                        local.get $p0
                        local.get $l48
                        i32.add
                        local.set $l49
                        i32.const 48
                        local.set $l50
                        local.get $p0
                        local.get $l50
                        i32.add
                        local.set $l51
                        local.get $p0
                        local.get $l45
                        i32.store offset=56
                        local.get $l47
                        i32.load
                        local.set $l52
                        local.get $l49
                        local.get $l52
                        i32.store
                        local.get $p0
                        i32.load offset=52
                        local.set $l53
                        local.get $l51
                        local.get $l53
                        call $std::experimental::coroutines::suspend_always::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
                        i32.const 255
                        local.set $l54
                        local.get $l54
                        local.set $l14
                        br $B14
                      end
                      local.get $l14
                      local.set $l55
                      i32.const 255
                      local.set $l56
                      local.get $l55
                      local.get $l56
                      i32.and
                      local.set $l57
                      i32.const 1
                      local.set $l58
                      local.get $l57
                      local.get $l58
                      i32.gt_u
                      local.set $l59
                      local.get $l59
                      br_if $B1
                      block $B19
                        local.get $l57
                        br_table $B15 $B19 $B15
                      end
                      i32.const 2
                      local.set $l60
                      local.get $l60
                      local.set $l61
                      local.get $l61
                      local.set $l62
                      local.get $l62
                      local.set $l23
                      br $B2
                    end
                    i32.const 48
                    local.set $l63
                    local.get $p0
                    local.get $l63
                    i32.add
                    local.set $l64
                    local.get $l64
                    call $std::experimental::coroutines::suspend_always::await_resume__
                    i32.const 0
                    local.set $l15
                    br $L13
                  end
                  i32.const 1
                  local.set $l15
                  br $L13
                end
              end
              local.get $l2
              call $resumable::promise_type::final_suspend__
              local.set $l65
              i32.const 60
              local.set $l66
              local.get $p0
              local.get $l66
              i32.add
              local.set $l67
              local.get $p0
              local.get $l65
              i32.store offset=60
              local.get $l67
              call $resumable::await_ready__
              local.set $l68
              i32.const 1
              local.set $l69
              local.get $l68
              local.get $l69
              i32.and
              local.set $l70
              local.get $l70
              br_if $B3
              i32.const 0
              local.set $l71
              local.get $p0
              local.get $l71
              i32.store
              local.get $p0
              call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
              local.set $l72
              i32.const 68
              local.set $l73
              local.get $p0
              local.get $l73
              i32.add
              local.set $l74
              i32.const 64
              local.set $l75
              local.get $p0
              local.get $l75
              i32.add
              local.set $l76
              i32.const 60
              local.set $l77
              local.get $p0
              local.get $l77
              i32.add
              local.set $l78
              local.get $p0
              local.get $l72
              i32.store offset=68
              local.get $l74
              i32.load
              local.set $l79
              local.get $l76
              local.get $l79
              i32.store
              local.get $p0
              i32.load offset=64
              local.set $l80
              local.get $l78
              local.get $l80
              call $resumable::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
              i32.const 255
              local.set $l81
              local.get $l81
              local.set $l17
            end
            local.get $l17
            local.set $l82
            i32.const 255
            local.set $l83
            local.get $l82
            local.get $l83
            i32.and
            local.set $l84
            i32.const 1
            local.set $l85
            local.get $l84
            local.get $l85
            i32.gt_u
            local.set $l86
            local.get $l86
            br_if $B1
            block $B20
              local.get $l84
              br_table $B3 $B20 $B3
            end
            i32.const 2
            local.set $l87
            local.get $l87
            local.set $l88
            local.get $l88
            local.set $l89
            local.get $l89
            local.set $l23
            br $B2
          end
          i32.const 60
          local.set $l90
          local.get $p0
          local.get $l90
          i32.add
          local.set $l91
          local.get $l91
          call $resumable::await_resume__
          drop
          i32.const 0
          local.set $l92
          local.get $l92
          local.set $l93
          local.get $l93
          local.set $l94
          local.get $l94
          local.set $l23
        end
        local.get $l23
        local.set $l95
        i32.const 0
        local.set $l96
        local.get $p0
        local.set $l97
        local.get $l96
        local.set $l98
        local.get $l97
        local.get $l98
        i32.ne
        local.set $l99
        i32.const 1
        local.set $l100
        local.get $l99
        local.get $l100
        i32.and
        local.set $l101
        block $B21
          local.get $l101
          i32.eqz
          br_if $B21
          local.get $p0
          call $operator_delete_void*_
        end
        local.get $l95
        local.set $l102
        block $B22
          local.get $l102
          br_table $B22 $B0 $B1 $B22
        end
      end
      return
    end
    unreachable
    unreachable)
  (func $foo_int___.cleanup_ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32) (local $l40 i32) (local $l41 i32) (local $l42 i32) (local $l43 i32) (local $l44 i32) (local $l45 i32) (local $l46 i32) (local $l47 i32) (local $l48 i32) (local $l49 i32) (local $l50 i32) (local $l51 i32) (local $l52 i32) (local $l53 i32) (local $l54 i32) (local $l55 i32) (local $l56 i32) (local $l57 i32) (local $l58 i32) (local $l59 i32) (local $l60 i32) (local $l61 i32) (local $l62 i32) (local $l63 i32) (local $l64 i32) (local $l65 i32) (local $l66 i32) (local $l67 i32) (local $l68 i32) (local $l69 i32) (local $l70 i32) (local $l71 i32) (local $l72 i32) (local $l73 i32) (local $l74 i32) (local $l75 i32) (local $l76 i32) (local $l77 i32) (local $l78 i32) (local $l79 i32) (local $l80 i32) (local $l81 i32) (local $l82 i32) (local $l83 i32) (local $l84 i32) (local $l85 i32) (local $l86 i32) (local $l87 i32) (local $l88 i32) (local $l89 i32) (local $l90 i32) (local $l91 i32) (local $l92 i32) (local $l93 i32) (local $l94 i32) (local $l95 i32) (local $l96 i32) (local $l97 i32) (local $l98 i32) (local $l99 i32) (local $l100 i32) (local $l101 i32) (local $l102 i32) (local $l103 i32)
    i32.const 8
    local.set $l1
    local.get $p0
    local.get $l1
    i32.add
    local.set $l2
    i32.const 0
    local.set $l3
    local.get $p0
    i32.load8_u offset=12
    local.set $l4
    local.get $p0
    i32.load
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.set $l7
    local.get $l6
    local.get $l7
    i32.eq
    local.set $l8
    i32.const 1
    local.set $l9
    local.get $l8
    local.get $l9
    i32.and
    local.set $l10
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $l10
                      br_if $B8
                      i32.const 3
                      local.set $l11
                      local.get $l4
                      local.get $l11
                      i32.and
                      local.set $l12
                      block $B9
                        local.get $l12
                        br_table $B7 $B9 $B7
                      end
                      i32.const 1
                      local.set $l13
                      local.get $l13
                      local.set $l14
                      i32.const 1
                      local.set $l15
                      br $B6
                    end
                    i32.const 1
                    local.set $l16
                    local.get $l16
                    local.set $l17
                    br $B4
                  end
                  i32.const 1
                  local.set $l18
                  i32.const 0
                  local.set $l19
                  local.get $l19
                  br_if $B1
                  block $B10
                    block $B11
                      local.get $l18
                      br_table $B10 $B11 $B10
                    end
                    i32.const 2
                    local.set $l20
                    local.get $l20
                    local.set $l21
                    local.get $l21
                    local.set $l22
                    local.get $l22
                    local.set $l23
                    br $B2
                  end
                  i32.const 1
                  local.set $l24
                  i32.const 28
                  local.set $l25
                  local.get $p0
                  local.get $l25
                  i32.add
                  local.set $l26
                  i32.const 1
                  local.set $l27
                  local.get $l24
                  local.get $l27
                  i32.and
                  local.set $l28
                  local.get $p0
                  local.get $l28
                  i32.store8 offset=40
                  local.get $l26
                  call $resumable::await_resume__
                  drop
                  i32.const 0
                  local.set $l29
                  i32.const 1
                  local.set $l30
                  local.get $l29
                  local.get $l30
                  i32.and
                  local.set $l31
                  local.get $p0
                  local.get $l31
                  i32.store8 offset=40
                  local.get $p0
                  i32.load8_u offset=40
                  local.set $l32
                  i32.const 1
                  local.set $l33
                  local.get $l32
                  local.get $l33
                  i32.and
                  local.set $l34
                  block $B12
                    local.get $l34
                    br_if $B12
                    i32.const 0
                    local.set $l15
                    br $B6
                  end
                  br $B5
                end
                loop $L13
                  block $B14
                    block $B15
                      block $B16
                        block $B17
                          local.get $l15
                          br_table $B17 $B16 $B16
                        end
                        local.get $p0
                        i32.load offset=16
                        local.set $l35
                        local.get $l35
                        call $do_fetch
                        local.set $l36
                        local.get $p0
                        local.get $l36
                        i32.store offset=44
                        local.get $p0
                        i32.load offset=44
                        local.set $l37
                        block $B18
                          local.get $l37
                          i32.eqz
                          br_if $B18
                          local.get $p0
                          i32.load offset=44
                          local.set $l38
                          local.get $l2
                          local.get $l38
                          call $resumable::promise_type::return_value_int_
                          br $B5
                        end
                        i32.const 48
                        local.set $l39
                        local.get $p0
                        local.get $l39
                        i32.add
                        local.set $l40
                        local.get $l40
                        call $std::experimental::coroutines::suspend_always::await_ready__
                        local.set $l41
                        i32.const 1
                        local.set $l42
                        local.get $l41
                        local.get $l42
                        i32.and
                        local.set $l43
                        local.get $l43
                        br_if $B15
                        i32.const 1
                        local.set $l44
                        local.get $p0
                        local.get $l44
                        i32.store8 offset=12
                        local.get $p0
                        call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
                        local.set $l45
                        i32.const 56
                        local.set $l46
                        local.get $p0
                        local.get $l46
                        i32.add
                        local.set $l47
                        i32.const 52
                        local.set $l48
                        local.get $p0
                        local.get $l48
                        i32.add
                        local.set $l49
                        i32.const 48
                        local.set $l50
                        local.get $p0
                        local.get $l50
                        i32.add
                        local.set $l51
                        local.get $p0
                        local.get $l45
                        i32.store offset=56
                        local.get $l47
                        i32.load
                        local.set $l52
                        local.get $l49
                        local.get $l52
                        i32.store
                        local.get $p0
                        i32.load offset=52
                        local.set $l53
                        local.get $l51
                        local.get $l53
                        call $std::experimental::coroutines::suspend_always::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
                        i32.const 255
                        local.set $l54
                        local.get $l54
                        local.set $l14
                        br $B14
                      end
                      local.get $l14
                      local.set $l55
                      i32.const 255
                      local.set $l56
                      local.get $l55
                      local.get $l56
                      i32.and
                      local.set $l57
                      i32.const 1
                      local.set $l58
                      local.get $l57
                      local.get $l58
                      i32.gt_u
                      local.set $l59
                      local.get $l59
                      br_if $B1
                      block $B19
                        local.get $l57
                        br_table $B15 $B19 $B15
                      end
                      i32.const 2
                      local.set $l60
                      local.get $l60
                      local.set $l61
                      local.get $l61
                      local.set $l62
                      local.get $l62
                      local.set $l23
                      br $B2
                    end
                    i32.const 48
                    local.set $l63
                    local.get $p0
                    local.get $l63
                    i32.add
                    local.set $l64
                    local.get $l64
                    call $std::experimental::coroutines::suspend_always::await_resume__
                    i32.const 0
                    local.set $l15
                    br $L13
                  end
                  i32.const 1
                  local.set $l15
                  br $L13
                end
              end
              local.get $l2
              call $resumable::promise_type::final_suspend__
              local.set $l65
              i32.const 60
              local.set $l66
              local.get $p0
              local.get $l66
              i32.add
              local.set $l67
              local.get $p0
              local.get $l65
              i32.store offset=60
              local.get $l67
              call $resumable::await_ready__
              local.set $l68
              i32.const 1
              local.set $l69
              local.get $l68
              local.get $l69
              i32.and
              local.set $l70
              local.get $l70
              br_if $B3
              i32.const 0
              local.set $l71
              local.get $p0
              local.get $l71
              i32.store
              local.get $p0
              call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
              local.set $l72
              i32.const 68
              local.set $l73
              local.get $p0
              local.get $l73
              i32.add
              local.set $l74
              i32.const 64
              local.set $l75
              local.get $p0
              local.get $l75
              i32.add
              local.set $l76
              i32.const 60
              local.set $l77
              local.get $p0
              local.get $l77
              i32.add
              local.set $l78
              local.get $p0
              local.get $l72
              i32.store offset=68
              local.get $l74
              i32.load
              local.set $l79
              local.get $l76
              local.get $l79
              i32.store
              local.get $p0
              i32.load offset=64
              local.set $l80
              local.get $l78
              local.get $l80
              call $resumable::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
              i32.const 255
              local.set $l81
              local.get $l81
              local.set $l17
            end
            local.get $l17
            local.set $l82
            i32.const 255
            local.set $l83
            local.get $l82
            local.get $l83
            i32.and
            local.set $l84
            i32.const 1
            local.set $l85
            local.get $l84
            local.get $l85
            i32.gt_u
            local.set $l86
            local.get $l86
            br_if $B1
            block $B20
              local.get $l84
              br_table $B3 $B20 $B3
            end
            i32.const 2
            local.set $l87
            local.get $l87
            local.set $l88
            local.get $l88
            local.set $l89
            local.get $l89
            local.set $l23
            br $B2
          end
          i32.const 60
          local.set $l90
          local.get $p0
          local.get $l90
          i32.add
          local.set $l91
          local.get $l91
          call $resumable::await_resume__
          drop
          i32.const 0
          local.set $l92
          local.get $l92
          local.set $l93
          local.get $l93
          local.set $l94
          local.get $l94
          local.set $l23
        end
        local.get $l23
        local.set $l95
        i32.const 0
        local.set $l96
        local.get $l96
        local.set $l97
        local.get $l96
        local.set $l98
        local.get $l97
        local.get $l98
        i32.ne
        local.set $l99
        i32.const 1
        local.set $l100
        local.get $l99
        local.get $l100
        i32.and
        local.set $l101
        block $B21
          local.get $l101
          i32.eqz
          br_if $B21
          i32.const 0
          local.set $l102
          local.get $l102
          call $operator_delete_void*_
        end
        local.get $l95
        local.set $l103
        block $B22
          local.get $l103
          br_table $B22 $B0 $B1 $B22
        end
      end
      return
    end
    unreachable
    unreachable)
  (func $foo_int___.resume_ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i32) (local $l31 i32) (local $l32 i32) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 i32) (local $l39 i32) (local $l40 i32) (local $l41 i32) (local $l42 i32) (local $l43 i32) (local $l44 i32) (local $l45 i32) (local $l46 i32) (local $l47 i32) (local $l48 i32) (local $l49 i32) (local $l50 i32) (local $l51 i32) (local $l52 i32) (local $l53 i32) (local $l54 i32) (local $l55 i32) (local $l56 i32) (local $l57 i32) (local $l58 i32) (local $l59 i32) (local $l60 i32) (local $l61 i32) (local $l62 i32) (local $l63 i32) (local $l64 i32) (local $l65 i32) (local $l66 i32) (local $l67 i32) (local $l68 i32) (local $l69 i32) (local $l70 i32) (local $l71 i32) (local $l72 i32) (local $l73 i32) (local $l74 i32) (local $l75 i32) (local $l76 i32) (local $l77 i32) (local $l78 i32) (local $l79 i32) (local $l80 i32) (local $l81 i32) (local $l82 i32) (local $l83 i32) (local $l84 i32) (local $l85 i32) (local $l86 i32)
    i32.const 8
    local.set $l1
    local.get $p0
    local.get $l1
    i32.add
    local.set $l2
    local.get $p0
    i32.load8_u offset=12
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  local.get $l3
                  br_table $B5 $B6 $B5
                end
                i32.const 0
                local.set $l4
                local.get $l4
                local.set $l5
                i32.const 1
                local.set $l6
                br $B4
              end
              i32.const 0
              local.set $l7
              local.get $l7
              br_if $B1
              block $B7
                block $B8
                  local.get $l7
                  br_table $B7 $B8 $B7
                end
                i32.const 2
                local.set $l8
                local.get $l8
                local.set $l9
                local.get $l9
                local.set $l10
                local.get $l10
                local.set $l11
                br $B2
              end
              i32.const 1
              local.set $l12
              i32.const 28
              local.set $l13
              local.get $p0
              local.get $l13
              i32.add
              local.set $l14
              i32.const 1
              local.set $l15
              local.get $l12
              local.get $l15
              i32.and
              local.set $l16
              local.get $p0
              local.get $l16
              i32.store8 offset=40
              local.get $l14
              call $resumable::await_resume__
              drop
              i32.const 0
              local.set $l17
              i32.const 1
              local.set $l18
              local.get $l17
              local.get $l18
              i32.and
              local.set $l19
              local.get $p0
              local.get $l19
              i32.store8 offset=40
              local.get $p0
              i32.load8_u offset=40
              local.set $l20
              i32.const 1
              local.set $l21
              local.get $l20
              local.get $l21
              i32.and
              local.set $l22
              block $B9
                local.get $l22
                br_if $B9
                i32.const 0
                local.set $l6
                br $B4
              end
              br $B3
            end
            loop $L10
              block $B11
                block $B12
                  block $B13
                    block $B14
                      local.get $l6
                      br_table $B14 $B13 $B13
                    end
                    local.get $p0
                    i32.load offset=16
                    local.set $l23
                    local.get $l23
                    call $do_fetch
                    local.set $l24
                    local.get $p0
                    local.get $l24
                    i32.store offset=44
                    local.get $p0
                    i32.load offset=44
                    local.set $l25
                    block $B15
                      local.get $l25
                      i32.eqz
                      br_if $B15
                      local.get $p0
                      i32.load offset=44
                      local.set $l26
                      local.get $l2
                      local.get $l26
                      call $resumable::promise_type::return_value_int_
                      br $B3
                    end
                    i32.const 48
                    local.set $l27
                    local.get $p0
                    local.get $l27
                    i32.add
                    local.set $l28
                    local.get $l28
                    call $std::experimental::coroutines::suspend_always::await_ready__
                    local.set $l29
                    i32.const 1
                    local.set $l30
                    local.get $l29
                    local.get $l30
                    i32.and
                    local.set $l31
                    local.get $l31
                    br_if $B12
                    i32.const 1
                    local.set $l32
                    local.get $p0
                    local.get $l32
                    i32.store8 offset=12
                    local.get $p0
                    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
                    local.set $l33
                    i32.const 56
                    local.set $l34
                    local.get $p0
                    local.get $l34
                    i32.add
                    local.set $l35
                    i32.const 52
                    local.set $l36
                    local.get $p0
                    local.get $l36
                    i32.add
                    local.set $l37
                    i32.const 48
                    local.set $l38
                    local.get $p0
                    local.get $l38
                    i32.add
                    local.set $l39
                    local.get $p0
                    local.get $l33
                    i32.store offset=56
                    local.get $l35
                    i32.load
                    local.set $l40
                    local.get $l37
                    local.get $l40
                    i32.store
                    local.get $p0
                    i32.load offset=52
                    local.set $l41
                    local.get $l39
                    local.get $l41
                    call $std::experimental::coroutines::suspend_always::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
                    i32.const 255
                    local.set $l42
                    local.get $l42
                    local.set $l5
                    br $B11
                  end
                  local.get $l5
                  local.set $l43
                  i32.const 255
                  local.set $l44
                  local.get $l43
                  local.get $l44
                  i32.and
                  local.set $l45
                  i32.const 1
                  local.set $l46
                  local.get $l45
                  local.get $l46
                  i32.gt_u
                  local.set $l47
                  local.get $l47
                  br_if $B1
                  block $B16
                    local.get $l45
                    br_table $B12 $B16 $B12
                  end
                  i32.const 2
                  local.set $l48
                  local.get $l48
                  local.set $l49
                  local.get $l49
                  local.set $l50
                  local.get $l50
                  local.set $l11
                  br $B2
                end
                i32.const 48
                local.set $l51
                local.get $p0
                local.get $l51
                i32.add
                local.set $l52
                local.get $l52
                call $std::experimental::coroutines::suspend_always::await_resume__
                i32.const 0
                local.set $l6
                br $L10
              end
              i32.const 1
              local.set $l6
              br $L10
            end
          end
          local.get $l2
          call $resumable::promise_type::final_suspend__
          local.set $l53
          i32.const 60
          local.set $l54
          local.get $p0
          local.get $l54
          i32.add
          local.set $l55
          local.get $p0
          local.get $l53
          i32.store offset=60
          local.get $l55
          call $resumable::await_ready__
          local.set $l56
          i32.const 1
          local.set $l57
          local.get $l56
          local.get $l57
          i32.and
          local.set $l58
          block $B17
            local.get $l58
            br_if $B17
            i32.const 0
            local.set $l59
            local.get $p0
            local.get $l59
            i32.store
            local.get $p0
            call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_
            local.set $l60
            i32.const 68
            local.set $l61
            local.get $p0
            local.get $l61
            i32.add
            local.set $l62
            i32.const 64
            local.set $l63
            local.get $p0
            local.get $l63
            i32.add
            local.set $l64
            i32.const 60
            local.set $l65
            local.get $p0
            local.get $l65
            i32.add
            local.set $l66
            local.get $p0
            local.get $l60
            i32.store offset=68
            local.get $l62
            i32.load
            local.set $l67
            local.get $l64
            local.get $l67
            i32.store
            local.get $p0
            i32.load offset=64
            local.set $l68
            local.get $l66
            local.get $l68
            call $resumable::await_suspend_std::experimental::coroutines::coroutine_handle<void>_
            i32.const 255
            local.set $l69
            i32.const 1
            local.set $l70
            local.get $l70
            br_if $B1
            block $B18
              local.get $l69
              br_table $B17 $B18 $B17
            end
            i32.const 2
            local.set $l71
            local.get $l71
            local.set $l72
            local.get $l72
            local.set $l73
            local.get $l73
            local.set $l11
            br $B2
          end
          i32.const 60
          local.set $l74
          local.get $p0
          local.get $l74
          i32.add
          local.set $l75
          local.get $l75
          call $resumable::await_resume__
          drop
          i32.const 0
          local.set $l76
          local.get $l76
          local.set $l77
          local.get $l77
          local.set $l78
          local.get $l78
          local.set $l11
        end
        local.get $l11
        local.set $l79
        i32.const 0
        local.set $l80
        local.get $p0
        local.set $l81
        local.get $l80
        local.set $l82
        local.get $l81
        local.get $l82
        i32.ne
        local.set $l83
        i32.const 1
        local.set $l84
        local.get $l83
        local.get $l84
        i32.and
        local.set $l85
        block $B19
          local.get $l85
          i32.eqz
          br_if $B19
          local.get $p0
          call $operator_delete_void*_
        end
        local.get $l79
        local.set $l86
        block $B20
          local.get $l86
          br_table $B20 $B0 $B1 $B20
        end
      end
      return
    end
    unreachable
    unreachable)
  (func $resumable::promise_type::get_return_object__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
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
    i32.const 8
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l3
    i32.load offset=4
    local.set $l7
    local.get $l7
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_promise_resumable::promise_type&_
    local.set $l8
    local.get $l3
    local.get $l8
    i32.store
    local.get $l3
    i32.load
    local.set $l9
    local.get $l6
    local.get $l9
    call $resumable::resumable_std::experimental::coroutines::coroutine_handle<resumable::promise_type>_
    drop
    local.get $l3
    i32.load offset=8
    local.set $l10
    i32.const 16
    local.set $l11
    local.get $l3
    local.get $l11
    i32.add
    local.set $l12
    local.get $l12
    global.set $g0
    local.get $l10
    return)
  (func $resumable::promise_type::initial_suspend__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
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
    i32.const 8
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l6
    call $resumable::resumable__
    drop
    local.get $l3
    i32.load offset=8
    local.set $l7
    i32.const 16
    local.set $l8
    local.get $l3
    local.get $l8
    i32.add
    local.set $l9
    local.get $l9
    global.set $g0
    local.get $l7
    return)
  (func $resumable::await_ready__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
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
    local.get $l5
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::promise___const
    local.set $l6
    local.get $l6
    i32.load
    local.set $l7
    local.get $l7
    local.set $l8
    local.get $l4
    local.set $l9
    local.get $l8
    local.get $l9
    i32.eq
    local.set $l10
    i32.const 1
    local.set $l11
    local.get $l10
    local.get $l11
    i32.and
    local.set $l12
    i32.const 16
    local.set $l13
    local.get $l3
    local.get $l13
    i32.add
    local.set $l14
    local.get $l14
    global.set $g0
    local.get $l12
    return)
  (func $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_address_void*_ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
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
    i32.const 8
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l6
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::coroutine_handle__
    drop
    local.get $l3
    i32.load offset=4
    local.set $l7
    local.get $l3
    local.get $l7
    i32.store offset=8
    local.get $l3
    i32.load offset=8
    local.set $l8
    i32.const 16
    local.set $l9
    local.get $l3
    local.get $l9
    i32.add
    local.set $l10
    local.get $l10
    global.set $g0
    local.get $l8
    return)
  (func $resumable::await_suspend_std::experimental::coroutines::coroutine_handle<void>_ (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    local.set $l2
    i32.const 16
    local.set $l3
    local.get $l2
    local.get $l3
    i32.sub
    local.set $l4
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    local.get $p0
    i32.store offset=4
    return)
  (func $resumable::await_resume__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::promise___const
    local.set $l5
    local.get $l5
    i32.load
    local.set $l6
    i32.const 16
    local.set $l7
    local.get $l3
    local.get $l7
    i32.add
    local.set $l8
    local.get $l8
    global.set $g0
    local.get $l6
    return)
  (func $resumable::promise_type::return_value_int_ (type $t3) (param $p0 i32) (param $p1 i32)
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
    return)
  (func $std::experimental::coroutines::suspend_always::await_ready__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    i32.const 0
    local.set $l4
    local.get $l3
    local.get $p0
    i32.store offset=12
    i32.const 1
    local.set $l5
    local.get $l4
    local.get $l5
    i32.and
    local.set $l6
    local.get $l6
    return)
  (func $std::experimental::coroutines::suspend_always::await_suspend_std::experimental::coroutines::coroutine_handle<void>_ (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    local.set $l2
    i32.const 16
    local.set $l3
    local.get $l2
    local.get $l3
    i32.sub
    local.set $l4
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    local.get $p0
    i32.store offset=4
    return)
  (func $std::experimental::coroutines::suspend_always::await_resume__ (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
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
    return)
  (func $resumable::promise_type::final_suspend__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
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
    i32.const 8
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l6
    call $resumable::resumable__
    drop
    local.get $l3
    i32.load offset=8
    local.set $l7
    i32.const 16
    local.set $l8
    local.get $l3
    local.get $l8
    i32.add
    local.set $l9
    local.get $l9
    global.set $g0
    local.get $l7
    return)
  (func $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::from_promise_resumable::promise_type&_ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
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
    i32.const 8
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l6
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::coroutine_handle__
    drop
    local.get $l3
    i32.load offset=4
    local.set $l7
    i32.const -8
    local.set $l8
    local.get $l7
    local.get $l8
    i32.add
    local.set $l9
    local.get $l3
    local.get $l9
    i32.store offset=8
    local.get $l3
    i32.load offset=8
    local.set $l10
    i32.const 16
    local.set $l11
    local.get $l3
    local.get $l11
    i32.add
    local.set $l12
    local.get $l12
    global.set $g0
    local.get $l10
    return)
  (func $resumable::resumable_std::experimental::coroutines::coroutine_handle<resumable::promise_type>_ (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    local.set $l2
    i32.const 16
    local.set $l3
    local.get $l2
    local.get $l3
    i32.sub
    local.set $l4
    i32.const 8
    local.set $l5
    local.get $l4
    local.get $l5
    i32.add
    local.set $l6
    local.get $l6
    local.set $l7
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    local.get $p0
    i32.store offset=4
    local.get $l4
    i32.load offset=4
    local.set $l8
    local.get $l7
    i32.load
    local.set $l9
    local.get $l8
    local.get $l9
    i32.store
    local.get $l8
    return)
  (func $resumable::resumable__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
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
    local.get $l5
    local.get $l4
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::coroutine_handle_std::nullptr_t_
    drop
    i32.const 16
    local.set $l6
    local.get $l3
    local.get $l6
    i32.add
    local.set $l7
    local.get $l7
    global.set $g0
    local.get $l5
    return)
  (func $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::promise___const (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
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
    i32.const 8
    local.set $l6
    local.get $l5
    local.get $l6
    i32.add
    local.set $l7
    local.get $l3
    local.get $l7
    i32.store offset=8
    local.get $l3
    i32.load offset=8
    local.set $l8
    local.get $l8
    return)
  (func $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::coroutine_handle__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $std::experimental::coroutines::coroutine_handle<void>::coroutine_handle__
    drop
    i32.const 16
    local.set $l5
    local.get $l3
    local.get $l5
    i32.add
    local.set $l6
    local.get $l6
    global.set $g0
    local.get $l4
    return)
  (func $runtime (type $t1) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32)
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
    i32.const 0
    local.set $l4
    local.get $l4
    i32.load8_u offset=1032
    local.set $l5
    i32.const 255
    local.set $l6
    local.get $l5
    local.get $l6
    i32.and
    local.set $l7
    i32.const 255
    local.set $l8
    local.get $l3
    local.get $l8
    i32.and
    local.set $l9
    local.get $l7
    local.get $l9
    i32.eq
    local.set $l10
    i32.const 1
    local.set $l11
    local.get $l10
    local.get $l11
    i32.and
    local.set $l12
    block $B0
      local.get $l12
      i32.eqz
      br_if $B0
      i32.const 1
      local.set $l13
      call $fetch
      local.set $l14
      i32.const 0
      local.set $l15
      local.get $l15
      local.get $l14
      i32.store offset=1028
      i32.const 0
      local.set $l16
      local.get $l16
      local.get $l13
      i32.store8 offset=1032
    end
    i32.const 8
    local.set $l17
    local.get $l2
    local.get $l17
    i32.add
    local.set $l18
    local.get $l18
    local.set $l19
    i32.const 0
    local.set $l20
    local.get $l20
    i32.load offset=1028
    local.set $l21
    local.get $l21
    call $foo_int_
    local.set $l22
    local.get $l2
    local.get $l22
    i32.store offset=8
    local.get $l19
    call $resumable::return_val__
    local.set $l23
    i32.const 16
    local.set $l24
    local.get $l2
    local.get $l24
    i32.add
    local.set $l25
    local.get $l25
    global.set $g0
    local.get $l23
    return)
  (func $resumable::return_val__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
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
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l4
    local.get $l4
    call $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::promise___const
    local.set $l5
    local.get $l5
    i32.load
    local.set $l6
    i32.const 16
    local.set $l7
    local.get $l3
    local.get $l7
    i32.add
    local.set $l8
    local.get $l8
    global.set $g0
    local.get $l6
    return)
  (func $std::experimental::coroutines::coroutine_handle<void>::coroutine_handle__ (type $t0) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    i32.const 0
    local.set $l4
    local.get $l3
    local.get $p0
    i32.store offset=12
    local.get $l3
    i32.load offset=12
    local.set $l5
    local.get $l5
    local.get $l4
    i32.store
    local.get $l5
    return)
  (func $std::experimental::coroutines::coroutine_handle<resumable::promise_type>::coroutine_handle_std::nullptr_t_ (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    local.set $l2
    i32.const 16
    local.set $l3
    local.get $l2
    local.get $l3
    i32.sub
    local.set $l4
    local.get $l4
    global.set $g0
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
    call $std::experimental::coroutines::coroutine_handle<void>::coroutine_handle_std::nullptr_t_
    drop
    i32.const 16
    local.set $l7
    local.get $l4
    local.get $l7
    i32.add
    local.set $l8
    local.get $l8
    global.set $g0
    local.get $l5
    return)
  (func $std::experimental::coroutines::coroutine_handle<void>::coroutine_handle_std::nullptr_t_ (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    local.set $l2
    i32.const 16
    local.set $l3
    local.get $l2
    local.get $l3
    i32.sub
    local.set $l4
    i32.const 0
    local.set $l5
    local.get $l4
    local.get $p0
    i32.store offset=12
    local.get $l4
    local.get $p1
    i32.store offset=8
    local.get $l4
    i32.load offset=12
    local.set $l6
    local.get $l6
    local.get $l5
    i32.store
    local.get $l6
    return)
  (table $T0 4 4 funcref)
  (memory $memory 2)
  (global $g0 (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "_Znwm" (func $operator_new_unsigned_long_))
  (export "_Znam" (func $operator_new___unsigned_long_))
  (export "_ZdlPv" (func $operator_delete_void*_))
  (export "_ZdaPv" (func $operator_delete___void*_))
  (export "runtime" (func $runtime))
  (elem $e0 (i32.const 1) $foo_int___.destroy_ $foo_int___.cleanup_ $foo_int___.resume_)
  (data $d0 (i32.const 1024) "\10\04\01\00"))
