(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (export "test" (func $class-overloading/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class-overloading/Foo#baz (; 0 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $class-overloading/test (; 1 ;) (type $iv) (param $0 i32)
  (call $class-overloading/Foo#baz
   (get_local $0)
  )
 )
 (func $start (; 2 ;) (type $v)
  (call $class-overloading/test
   (i32.const 0)
  )
 )
)
