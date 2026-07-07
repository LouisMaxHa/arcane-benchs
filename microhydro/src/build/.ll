; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

define i64 @xdsl_main(i64 %0) {
  ret i64 %0
}

define i64 @_mlir_ciface_xdsl_main(i64 %0) {
  %2 = call i64 @xdsl_main(i64 %0)
  ret i64 %2
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
