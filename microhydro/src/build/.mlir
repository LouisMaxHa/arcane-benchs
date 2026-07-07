builtin.module {
  func.func @xdsl_main(%iArg: i64) -> i64 attributes {llvm.emit_c_interface} {
    %0 = memref.alloca() : memref<i64>
    memref.store %iArg, %0[] : memref<i64>
    %1 = memref.load %0[] : memref<i64>
    func.return %1 : i64
  }
}