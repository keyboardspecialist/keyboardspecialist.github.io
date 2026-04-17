(module
  (type $bcpl_fn (func (result i32)))
  (import "env" "bcpl_stop"    (func $imp_stop    (type $bcpl_fn)))
  (import "env" "bcpl_rdch"    (func $imp_rdch    (type $bcpl_fn)))
  (import "env" "bcpl_wrch"    (func $imp_wrch    (type $bcpl_fn)))
  (import "env" "bcpl_newline" (func $imp_newline (type $bcpl_fn)))
  (import "env" "bcpl_writen"  (func $imp_writen  (type $bcpl_fn)))
  (import "env" "bcpl_writes"  (func $imp_writes  (type $bcpl_fn)))
  (import "env" "bcpl_writef"  (func $imp_writef  (type $bcpl_fn)))
  (memory (export "mem") 4) ;; 4 pages = 256KB
  (global $G (export "G") i32 (i32.const 1))
  (global $P (export "P") (mut i32) (i32.const 0))
  (table $ftable (export "ftable") 256 funcref)

  ;; SECTION: hello
  (func $fn_L10 (export "fn_L10") (type $bcpl_fn)
    (local $__lab i32)
    (local $t0 i32)
    (local $t1 i32)
    (local $t2 i32)
    (local $t3 i32)
    (local $t4 i32)
    (local $t5 i32)
    (local $t6 i32)
    (local $t7 i32)
    (local $t8 i32)
    (local $t9 i32)
    (local $t10 i32)
    (local $t11 i32)
    (local $t12 i32)
    (local $t13 i32)
    (local $t14 i32)
    (local $t15 i32)
    (local $t16 i32)
    (local $t17 i32)
    (local $t18 i32)
    (local $t19 i32)
    (local $t20 i32)
    (local $t21 i32)
    (local $t22 i32)
    (local $t23 i32)
    (local $t24 i32)
    (local $t25 i32)
    (local $t26 i32)
    (local $t27 i32)
    (local $t28 i32)
    (local $t29 i32)
    (local $t30 i32)
    (local $t31 i32)
    (local $t32 i32)
    (local $t33 i32)
    (local $t34 i32)
    (local $t35 i32)
    (local $t36 i32)
    (local $t37 i32)
    (local $t38 i32)
    (local $t39 i32)
    (loop $__dispatch
    (if (i32.eqz (local.get $__lab)) (then ;; entry block
    (local.set $t3 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)))) ;; stack-fill t3 from P!3
    (local.set $t4 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)))) ;; stack-fill t4 from P!4
    (local.set $t5 (i32.load (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)))) ;; stack-fill t5 from P!5
    (local.set $t6 (i32.const 1001)) ;; LSTR at word 1001
    (local.set $t7 (i32.load (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376))))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 24)) (local.get $t6))
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 12)) (global.get $P)) ;; save P
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 16)) (i32.const 0)) ;; return addr placeholder
    (i32.store (i32.add (i32.shl (global.get $P) (i32.const 2)) (i32.const 20)) (local.get $t7)) ;; entry fn_idx
    (global.set $P (i32.add (global.get $P) (i32.const 3)))
    (drop (call_indirect $ftable (type $bcpl_fn) (local.get $t7)))
    (local.set $t3 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t3))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    (local.set $t3 (i32.const 0))
    ;; FNRN
    (local.set $t0 (local.get $t3))
    (global.set $P (i32.load (i32.shl (global.get $P) (i32.const 2))))
    (return (local.get $t0))
    )) ;; end last block
    ) ;; end $__dispatch
    (i32.const 0) ;; unreachable return
  ) ;; end func $fn_L10

  ;; --- function table ---
  (elem (table $ftable) (i32.const 0) func $imp_stop $imp_rdch $imp_wrch $imp_newline $imp_writen $imp_writes $imp_writef $fn_L10)

  (func $__init
    (global.set $P (i32.const 1004))
    (i32.store (i32.const 4) (i32.const 1000))
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 8)) (i32.const 0)) ;; stop
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 152)) (i32.const 1)) ;; rdch
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 164)) (i32.const 2)) ;; wrch
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 336)) (i32.const 3)) ;; newline
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 344)) (i32.const 4)) ;; writen
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 356)) (i32.const 5)) ;; writes
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 376)) (i32.const 6)) ;; writef
    (i32.store (i32.add (i32.shl (global.get $G) (i32.const 2)) (i32.const 4)) (i32.const 7)) ;; G!1 = fn_L10
  )
  (start $__init)

  ;; static data (3 words at word addr 1001)
  (data (i32.const 4004) "\06\00\00\00\48\65\6C\6C\6F\0A\00\00")

  (export "__init" (func $__init))
)
 ;; end module
