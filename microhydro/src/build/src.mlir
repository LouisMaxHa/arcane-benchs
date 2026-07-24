builtin.module {
  func.func @normL2(%r1Arg: !llvm.ptr) -> f64 attributes {llvm.emit_c_interface} {
    %const16.index = arith.constant 16 : index
    %const8.index = arith.constant 8 : index
    %const0.index = arith.constant 0 : index
    %0 = memref.view %r1Arg[%const0.index][] : !llvm.ptr to memref<f64>
    %1 = memref.alloca() : memref<f64>
    %2 = builtin.unrealized_conversion_cast %0 : memref<f64> to !llvm.ptr
    %3 = llvm.load %2 : !llvm.ptr -> f64
    %4 = builtin.unrealized_conversion_cast %1 : memref<f64> to !llvm.ptr
    llvm.store %3, %4 : f64, !llvm.ptr
    %5 = memref.view %r1Arg[%const0.index][] : !llvm.ptr to memref<f64>
    %6 = memref.alloca() : memref<f64>
    %7 = builtin.unrealized_conversion_cast %5 : memref<f64> to !llvm.ptr
    %8 = llvm.load %7 : !llvm.ptr -> f64
    %9 = builtin.unrealized_conversion_cast %6 : memref<f64> to !llvm.ptr
    llvm.store %8, %9 : f64, !llvm.ptr
    %10 = builtin.unrealized_conversion_cast %1 : memref<f64> to !llvm.ptr
    %11 = llvm.load %10 : !llvm.ptr -> f64
    %12 = builtin.unrealized_conversion_cast %6 : memref<f64> to !llvm.ptr
    %13 = llvm.load %12 : !llvm.ptr -> f64
    %14 = arith.mulf %11, %13 : f64
    %15 = memref.view %r1Arg[%const8.index][] : !llvm.ptr to memref<f64>
    %16 = memref.alloca() : memref<f64>
    %17 = builtin.unrealized_conversion_cast %15 : memref<f64> to !llvm.ptr
    %18 = llvm.load %17 : !llvm.ptr -> f64
    %19 = builtin.unrealized_conversion_cast %16 : memref<f64> to !llvm.ptr
    llvm.store %18, %19 : f64, !llvm.ptr
    %20 = memref.view %r1Arg[%const8.index][] : !llvm.ptr to memref<f64>
    %21 = memref.alloca() : memref<f64>
    %22 = builtin.unrealized_conversion_cast %20 : memref<f64> to !llvm.ptr
    %23 = llvm.load %22 : !llvm.ptr -> f64
    %24 = builtin.unrealized_conversion_cast %21 : memref<f64> to !llvm.ptr
    llvm.store %23, %24 : f64, !llvm.ptr
    %25 = builtin.unrealized_conversion_cast %16 : memref<f64> to !llvm.ptr
    %26 = llvm.load %25 : !llvm.ptr -> f64
    %27 = builtin.unrealized_conversion_cast %21 : memref<f64> to !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> f64
    %29 = arith.mulf %26, %28 : f64
    %30 = memref.view %r1Arg[%const16.index][] : !llvm.ptr to memref<f64>
    %31 = memref.alloca() : memref<f64>
    %32 = builtin.unrealized_conversion_cast %30 : memref<f64> to !llvm.ptr
    %33 = llvm.load %32 : !llvm.ptr -> f64
    %34 = builtin.unrealized_conversion_cast %31 : memref<f64> to !llvm.ptr
    llvm.store %33, %34 : f64, !llvm.ptr
    %35 = memref.view %r1Arg[%const16.index][] : !llvm.ptr to memref<f64>
    %36 = memref.alloca() : memref<f64>
    %37 = builtin.unrealized_conversion_cast %35 : memref<f64> to !llvm.ptr
    %38 = llvm.load %37 : !llvm.ptr -> f64
    %39 = builtin.unrealized_conversion_cast %36 : memref<f64> to !llvm.ptr
    llvm.store %38, %39 : f64, !llvm.ptr
    %40 = builtin.unrealized_conversion_cast %31 : memref<f64> to !llvm.ptr
    %41 = llvm.load %40 : !llvm.ptr -> f64
    %42 = builtin.unrealized_conversion_cast %36 : memref<f64> to !llvm.ptr
    %43 = llvm.load %42 : !llvm.ptr -> f64
    %44 = arith.mulf %41, %43 : f64
    %45 = arith.addf %29, %44 : f64
    %46 = arith.addf %14, %45 : f64
    func.return %46 : f64
  }
  func.func @xdsl_main(%face_coordArg: !llvm.ptr, %cidArg: i64, %out_caracteristic_lengthArg: !llvm.ptr) -> i64 attributes {llvm.emit_c_interface} {
    %const0.i64 = arith.constant 0 : i64
    %const0.1.f64 = arith.constant 1.000000e-01 : f64
    %const4.index = arith.constant 4 : index
    %const5.index = arith.constant 5 : index
    %const2.index = arith.constant 2 : index
    %const16.index = arith.constant 16 : index
    %const8.index = arith.constant 8 : index
    %const3.index = arith.constant 3 : index
    %const1.index = arith.constant 1 : index
    %const24.index = arith.constant 24 : index
    %const0.index = arith.constant 0 : index
    %0 = memref.alloca() : memref<i64>
    %1 = builtin.unrealized_conversion_cast %0 : memref<i64> to !llvm.ptr
    llvm.store %cidArg, %1 : i64, !llvm.ptr
    %2 = memref.alloca() : memref<24xi8>
    %3 = arith.muli %const0.index, %const24.index : index
    %bytes_per_element = arith.constant 1 : index
    %scaled_pointer_offset = arith.muli %3, %bytes_per_element : index
    %offset_pointer = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_1 = arith.index_cast %scaled_pointer_offset : index to i64
    %offset_pointer_2 = llvm.ptrtoint %offset_pointer : !llvm.ptr to i64
    %offset_pointer_3 = arith.addi %offset_pointer_2, %offset_pointer_1 : i64
    %offset_pointer_4 = llvm.inttoptr %offset_pointer_3 : i64 to !llvm.ptr
    %4 = memref.view %offset_pointer_4[%const0.index][] : !llvm.ptr to memref<f64>
    %5 = memref.alloca() : memref<f64>
    %6 = builtin.unrealized_conversion_cast %4 : memref<f64> to !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> f64
    %8 = builtin.unrealized_conversion_cast %5 : memref<f64> to !llvm.ptr
    llvm.store %7, %8 : f64, !llvm.ptr
    %9 = arith.muli %const3.index, %const24.index : index
    %bytes_per_element_1 = arith.constant 1 : index
    %scaled_pointer_offset_1 = arith.muli %9, %bytes_per_element_1 : index
    %offset_pointer_5 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_6 = arith.index_cast %scaled_pointer_offset_1 : index to i64
    %offset_pointer_7 = llvm.ptrtoint %offset_pointer_5 : !llvm.ptr to i64
    %offset_pointer_8 = arith.addi %offset_pointer_7, %offset_pointer_6 : i64
    %offset_pointer_9 = llvm.inttoptr %offset_pointer_8 : i64 to !llvm.ptr
    %10 = memref.view %offset_pointer_9[%const0.index][] : !llvm.ptr to memref<f64>
    %11 = memref.alloca() : memref<f64>
    %12 = builtin.unrealized_conversion_cast %10 : memref<f64> to !llvm.ptr
    %13 = llvm.load %12 : !llvm.ptr -> f64
    %14 = builtin.unrealized_conversion_cast %11 : memref<f64> to !llvm.ptr
    llvm.store %13, %14 : f64, !llvm.ptr
    %15 = builtin.unrealized_conversion_cast %5 : memref<f64> to !llvm.ptr
    %16 = llvm.load %15 : !llvm.ptr -> f64
    %17 = builtin.unrealized_conversion_cast %11 : memref<f64> to !llvm.ptr
    %18 = llvm.load %17 : !llvm.ptr -> f64
    %19 = arith.subf %16, %18 : f64
    %20 = memref.view %2[%const0.index][] : memref<24xi8> to memref<f64>
    %21 = builtin.unrealized_conversion_cast %20 : memref<f64> to !llvm.ptr
    llvm.store %19, %21 : f64, !llvm.ptr
    %22 = arith.muli %const0.index, %const24.index : index
    %bytes_per_element_2 = arith.constant 1 : index
    %scaled_pointer_offset_2 = arith.muli %22, %bytes_per_element_2 : index
    %offset_pointer_10 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_11 = arith.index_cast %scaled_pointer_offset_2 : index to i64
    %offset_pointer_12 = llvm.ptrtoint %offset_pointer_10 : !llvm.ptr to i64
    %offset_pointer_13 = arith.addi %offset_pointer_12, %offset_pointer_11 : i64
    %offset_pointer_14 = llvm.inttoptr %offset_pointer_13 : i64 to !llvm.ptr
    %23 = memref.view %offset_pointer_14[%const8.index][] : !llvm.ptr to memref<f64>
    %24 = memref.alloca() : memref<f64>
    %25 = builtin.unrealized_conversion_cast %23 : memref<f64> to !llvm.ptr
    %26 = llvm.load %25 : !llvm.ptr -> f64
    %27 = builtin.unrealized_conversion_cast %24 : memref<f64> to !llvm.ptr
    llvm.store %26, %27 : f64, !llvm.ptr
    %28 = arith.muli %const3.index, %const24.index : index
    %bytes_per_element_3 = arith.constant 1 : index
    %scaled_pointer_offset_3 = arith.muli %28, %bytes_per_element_3 : index
    %offset_pointer_15 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_16 = arith.index_cast %scaled_pointer_offset_3 : index to i64
    %offset_pointer_17 = llvm.ptrtoint %offset_pointer_15 : !llvm.ptr to i64
    %offset_pointer_18 = arith.addi %offset_pointer_17, %offset_pointer_16 : i64
    %offset_pointer_19 = llvm.inttoptr %offset_pointer_18 : i64 to !llvm.ptr
    %29 = memref.view %offset_pointer_19[%const8.index][] : !llvm.ptr to memref<f64>
    %30 = memref.alloca() : memref<f64>
    %31 = builtin.unrealized_conversion_cast %29 : memref<f64> to !llvm.ptr
    %32 = llvm.load %31 : !llvm.ptr -> f64
    %33 = builtin.unrealized_conversion_cast %30 : memref<f64> to !llvm.ptr
    llvm.store %32, %33 : f64, !llvm.ptr
    %34 = builtin.unrealized_conversion_cast %24 : memref<f64> to !llvm.ptr
    %35 = llvm.load %34 : !llvm.ptr -> f64
    %36 = builtin.unrealized_conversion_cast %30 : memref<f64> to !llvm.ptr
    %37 = llvm.load %36 : !llvm.ptr -> f64
    %38 = arith.subf %35, %37 : f64
    %39 = memref.view %2[%const8.index][] : memref<24xi8> to memref<f64>
    %40 = builtin.unrealized_conversion_cast %39 : memref<f64> to !llvm.ptr
    llvm.store %38, %40 : f64, !llvm.ptr
    %41 = arith.muli %const0.index, %const24.index : index
    %bytes_per_element_4 = arith.constant 1 : index
    %scaled_pointer_offset_4 = arith.muli %41, %bytes_per_element_4 : index
    %offset_pointer_20 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_21 = arith.index_cast %scaled_pointer_offset_4 : index to i64
    %offset_pointer_22 = llvm.ptrtoint %offset_pointer_20 : !llvm.ptr to i64
    %offset_pointer_23 = arith.addi %offset_pointer_22, %offset_pointer_21 : i64
    %offset_pointer_24 = llvm.inttoptr %offset_pointer_23 : i64 to !llvm.ptr
    %42 = memref.view %offset_pointer_24[%const16.index][] : !llvm.ptr to memref<f64>
    %43 = memref.alloca() : memref<f64>
    %44 = builtin.unrealized_conversion_cast %42 : memref<f64> to !llvm.ptr
    %45 = llvm.load %44 : !llvm.ptr -> f64
    %46 = builtin.unrealized_conversion_cast %43 : memref<f64> to !llvm.ptr
    llvm.store %45, %46 : f64, !llvm.ptr
    %47 = arith.muli %const3.index, %const24.index : index
    %bytes_per_element_5 = arith.constant 1 : index
    %scaled_pointer_offset_5 = arith.muli %47, %bytes_per_element_5 : index
    %offset_pointer_25 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_26 = arith.index_cast %scaled_pointer_offset_5 : index to i64
    %offset_pointer_27 = llvm.ptrtoint %offset_pointer_25 : !llvm.ptr to i64
    %offset_pointer_28 = arith.addi %offset_pointer_27, %offset_pointer_26 : i64
    %offset_pointer_29 = llvm.inttoptr %offset_pointer_28 : i64 to !llvm.ptr
    %48 = memref.view %offset_pointer_29[%const16.index][] : !llvm.ptr to memref<f64>
    %49 = memref.alloca() : memref<f64>
    %50 = builtin.unrealized_conversion_cast %48 : memref<f64> to !llvm.ptr
    %51 = llvm.load %50 : !llvm.ptr -> f64
    %52 = builtin.unrealized_conversion_cast %49 : memref<f64> to !llvm.ptr
    llvm.store %51, %52 : f64, !llvm.ptr
    %53 = builtin.unrealized_conversion_cast %43 : memref<f64> to !llvm.ptr
    %54 = llvm.load %53 : !llvm.ptr -> f64
    %55 = builtin.unrealized_conversion_cast %49 : memref<f64> to !llvm.ptr
    %56 = llvm.load %55 : !llvm.ptr -> f64
    %57 = arith.subf %54, %56 : f64
    %58 = memref.view %2[%const16.index][] : memref<24xi8> to memref<f64>
    %59 = builtin.unrealized_conversion_cast %58 : memref<f64> to !llvm.ptr
    llvm.store %57, %59 : f64, !llvm.ptr
    %60 = memref.alloca() : memref<24xi8>
    %61 = arith.muli %const2.index, %const24.index : index
    %bytes_per_element_6 = arith.constant 1 : index
    %scaled_pointer_offset_6 = arith.muli %61, %bytes_per_element_6 : index
    %offset_pointer_30 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_31 = arith.index_cast %scaled_pointer_offset_6 : index to i64
    %offset_pointer_32 = llvm.ptrtoint %offset_pointer_30 : !llvm.ptr to i64
    %offset_pointer_33 = arith.addi %offset_pointer_32, %offset_pointer_31 : i64
    %offset_pointer_34 = llvm.inttoptr %offset_pointer_33 : i64 to !llvm.ptr
    %62 = memref.view %offset_pointer_34[%const0.index][] : !llvm.ptr to memref<f64>
    %63 = memref.alloca() : memref<f64>
    %64 = builtin.unrealized_conversion_cast %62 : memref<f64> to !llvm.ptr
    %65 = llvm.load %64 : !llvm.ptr -> f64
    %66 = builtin.unrealized_conversion_cast %63 : memref<f64> to !llvm.ptr
    llvm.store %65, %66 : f64, !llvm.ptr
    %67 = arith.muli %const5.index, %const24.index : index
    %bytes_per_element_7 = arith.constant 1 : index
    %scaled_pointer_offset_7 = arith.muli %67, %bytes_per_element_7 : index
    %offset_pointer_35 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_36 = arith.index_cast %scaled_pointer_offset_7 : index to i64
    %offset_pointer_37 = llvm.ptrtoint %offset_pointer_35 : !llvm.ptr to i64
    %offset_pointer_38 = arith.addi %offset_pointer_37, %offset_pointer_36 : i64
    %offset_pointer_39 = llvm.inttoptr %offset_pointer_38 : i64 to !llvm.ptr
    %68 = memref.view %offset_pointer_39[%const0.index][] : !llvm.ptr to memref<f64>
    %69 = memref.alloca() : memref<f64>
    %70 = builtin.unrealized_conversion_cast %68 : memref<f64> to !llvm.ptr
    %71 = llvm.load %70 : !llvm.ptr -> f64
    %72 = builtin.unrealized_conversion_cast %69 : memref<f64> to !llvm.ptr
    llvm.store %71, %72 : f64, !llvm.ptr
    %73 = builtin.unrealized_conversion_cast %63 : memref<f64> to !llvm.ptr
    %74 = llvm.load %73 : !llvm.ptr -> f64
    %75 = builtin.unrealized_conversion_cast %69 : memref<f64> to !llvm.ptr
    %76 = llvm.load %75 : !llvm.ptr -> f64
    %77 = arith.subf %74, %76 : f64
    %78 = memref.view %60[%const0.index][] : memref<24xi8> to memref<f64>
    %79 = builtin.unrealized_conversion_cast %78 : memref<f64> to !llvm.ptr
    llvm.store %77, %79 : f64, !llvm.ptr
    %80 = arith.muli %const2.index, %const24.index : index
    %bytes_per_element_8 = arith.constant 1 : index
    %scaled_pointer_offset_8 = arith.muli %80, %bytes_per_element_8 : index
    %offset_pointer_40 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_41 = arith.index_cast %scaled_pointer_offset_8 : index to i64
    %offset_pointer_42 = llvm.ptrtoint %offset_pointer_40 : !llvm.ptr to i64
    %offset_pointer_43 = arith.addi %offset_pointer_42, %offset_pointer_41 : i64
    %offset_pointer_44 = llvm.inttoptr %offset_pointer_43 : i64 to !llvm.ptr
    %81 = memref.view %offset_pointer_44[%const8.index][] : !llvm.ptr to memref<f64>
    %82 = memref.alloca() : memref<f64>
    %83 = builtin.unrealized_conversion_cast %81 : memref<f64> to !llvm.ptr
    %84 = llvm.load %83 : !llvm.ptr -> f64
    %85 = builtin.unrealized_conversion_cast %82 : memref<f64> to !llvm.ptr
    llvm.store %84, %85 : f64, !llvm.ptr
    %86 = arith.muli %const5.index, %const24.index : index
    %bytes_per_element_9 = arith.constant 1 : index
    %scaled_pointer_offset_9 = arith.muli %86, %bytes_per_element_9 : index
    %offset_pointer_45 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_46 = arith.index_cast %scaled_pointer_offset_9 : index to i64
    %offset_pointer_47 = llvm.ptrtoint %offset_pointer_45 : !llvm.ptr to i64
    %offset_pointer_48 = arith.addi %offset_pointer_47, %offset_pointer_46 : i64
    %offset_pointer_49 = llvm.inttoptr %offset_pointer_48 : i64 to !llvm.ptr
    %87 = memref.view %offset_pointer_49[%const8.index][] : !llvm.ptr to memref<f64>
    %88 = memref.alloca() : memref<f64>
    %89 = builtin.unrealized_conversion_cast %87 : memref<f64> to !llvm.ptr
    %90 = llvm.load %89 : !llvm.ptr -> f64
    %91 = builtin.unrealized_conversion_cast %88 : memref<f64> to !llvm.ptr
    llvm.store %90, %91 : f64, !llvm.ptr
    %92 = builtin.unrealized_conversion_cast %82 : memref<f64> to !llvm.ptr
    %93 = llvm.load %92 : !llvm.ptr -> f64
    %94 = builtin.unrealized_conversion_cast %88 : memref<f64> to !llvm.ptr
    %95 = llvm.load %94 : !llvm.ptr -> f64
    %96 = arith.subf %93, %95 : f64
    %97 = memref.view %60[%const8.index][] : memref<24xi8> to memref<f64>
    %98 = builtin.unrealized_conversion_cast %97 : memref<f64> to !llvm.ptr
    llvm.store %96, %98 : f64, !llvm.ptr
    %99 = arith.muli %const2.index, %const24.index : index
    %bytes_per_element_10 = arith.constant 1 : index
    %scaled_pointer_offset_10 = arith.muli %99, %bytes_per_element_10 : index
    %offset_pointer_50 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_51 = arith.index_cast %scaled_pointer_offset_10 : index to i64
    %offset_pointer_52 = llvm.ptrtoint %offset_pointer_50 : !llvm.ptr to i64
    %offset_pointer_53 = arith.addi %offset_pointer_52, %offset_pointer_51 : i64
    %offset_pointer_54 = llvm.inttoptr %offset_pointer_53 : i64 to !llvm.ptr
    %100 = memref.view %offset_pointer_54[%const16.index][] : !llvm.ptr to memref<f64>
    %101 = memref.alloca() : memref<f64>
    %102 = builtin.unrealized_conversion_cast %100 : memref<f64> to !llvm.ptr
    %103 = llvm.load %102 : !llvm.ptr -> f64
    %104 = builtin.unrealized_conversion_cast %101 : memref<f64> to !llvm.ptr
    llvm.store %103, %104 : f64, !llvm.ptr
    %105 = arith.muli %const5.index, %const24.index : index
    %bytes_per_element_11 = arith.constant 1 : index
    %scaled_pointer_offset_11 = arith.muli %105, %bytes_per_element_11 : index
    %offset_pointer_55 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_56 = arith.index_cast %scaled_pointer_offset_11 : index to i64
    %offset_pointer_57 = llvm.ptrtoint %offset_pointer_55 : !llvm.ptr to i64
    %offset_pointer_58 = arith.addi %offset_pointer_57, %offset_pointer_56 : i64
    %offset_pointer_59 = llvm.inttoptr %offset_pointer_58 : i64 to !llvm.ptr
    %106 = memref.view %offset_pointer_59[%const16.index][] : !llvm.ptr to memref<f64>
    %107 = memref.alloca() : memref<f64>
    %108 = builtin.unrealized_conversion_cast %106 : memref<f64> to !llvm.ptr
    %109 = llvm.load %108 : !llvm.ptr -> f64
    %110 = builtin.unrealized_conversion_cast %107 : memref<f64> to !llvm.ptr
    llvm.store %109, %110 : f64, !llvm.ptr
    %111 = builtin.unrealized_conversion_cast %101 : memref<f64> to !llvm.ptr
    %112 = llvm.load %111 : !llvm.ptr -> f64
    %113 = builtin.unrealized_conversion_cast %107 : memref<f64> to !llvm.ptr
    %114 = llvm.load %113 : !llvm.ptr -> f64
    %115 = arith.subf %112, %114 : f64
    %116 = memref.view %60[%const16.index][] : memref<24xi8> to memref<f64>
    %117 = builtin.unrealized_conversion_cast %116 : memref<f64> to !llvm.ptr
    llvm.store %115, %117 : f64, !llvm.ptr
    %118 = memref.alloca() : memref<24xi8>
    %119 = arith.muli %const1.index, %const24.index : index
    %bytes_per_element_12 = arith.constant 1 : index
    %scaled_pointer_offset_12 = arith.muli %119, %bytes_per_element_12 : index
    %offset_pointer_60 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_61 = arith.index_cast %scaled_pointer_offset_12 : index to i64
    %offset_pointer_62 = llvm.ptrtoint %offset_pointer_60 : !llvm.ptr to i64
    %offset_pointer_63 = arith.addi %offset_pointer_62, %offset_pointer_61 : i64
    %offset_pointer_64 = llvm.inttoptr %offset_pointer_63 : i64 to !llvm.ptr
    %120 = memref.view %offset_pointer_64[%const0.index][] : !llvm.ptr to memref<f64>
    %121 = memref.alloca() : memref<f64>
    %122 = builtin.unrealized_conversion_cast %120 : memref<f64> to !llvm.ptr
    %123 = llvm.load %122 : !llvm.ptr -> f64
    %124 = builtin.unrealized_conversion_cast %121 : memref<f64> to !llvm.ptr
    llvm.store %123, %124 : f64, !llvm.ptr
    %125 = arith.muli %const4.index, %const24.index : index
    %bytes_per_element_13 = arith.constant 1 : index
    %scaled_pointer_offset_13 = arith.muli %125, %bytes_per_element_13 : index
    %offset_pointer_65 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_66 = arith.index_cast %scaled_pointer_offset_13 : index to i64
    %offset_pointer_67 = llvm.ptrtoint %offset_pointer_65 : !llvm.ptr to i64
    %offset_pointer_68 = arith.addi %offset_pointer_67, %offset_pointer_66 : i64
    %offset_pointer_69 = llvm.inttoptr %offset_pointer_68 : i64 to !llvm.ptr
    %126 = memref.view %offset_pointer_69[%const0.index][] : !llvm.ptr to memref<f64>
    %127 = memref.alloca() : memref<f64>
    %128 = builtin.unrealized_conversion_cast %126 : memref<f64> to !llvm.ptr
    %129 = llvm.load %128 : !llvm.ptr -> f64
    %130 = builtin.unrealized_conversion_cast %127 : memref<f64> to !llvm.ptr
    llvm.store %129, %130 : f64, !llvm.ptr
    %131 = builtin.unrealized_conversion_cast %121 : memref<f64> to !llvm.ptr
    %132 = llvm.load %131 : !llvm.ptr -> f64
    %133 = builtin.unrealized_conversion_cast %127 : memref<f64> to !llvm.ptr
    %134 = llvm.load %133 : !llvm.ptr -> f64
    %135 = arith.subf %132, %134 : f64
    %136 = memref.view %118[%const0.index][] : memref<24xi8> to memref<f64>
    %137 = builtin.unrealized_conversion_cast %136 : memref<f64> to !llvm.ptr
    llvm.store %135, %137 : f64, !llvm.ptr
    %138 = arith.muli %const1.index, %const24.index : index
    %bytes_per_element_14 = arith.constant 1 : index
    %scaled_pointer_offset_14 = arith.muli %138, %bytes_per_element_14 : index
    %offset_pointer_70 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_71 = arith.index_cast %scaled_pointer_offset_14 : index to i64
    %offset_pointer_72 = llvm.ptrtoint %offset_pointer_70 : !llvm.ptr to i64
    %offset_pointer_73 = arith.addi %offset_pointer_72, %offset_pointer_71 : i64
    %offset_pointer_74 = llvm.inttoptr %offset_pointer_73 : i64 to !llvm.ptr
    %139 = memref.view %offset_pointer_74[%const8.index][] : !llvm.ptr to memref<f64>
    %140 = memref.alloca() : memref<f64>
    %141 = builtin.unrealized_conversion_cast %139 : memref<f64> to !llvm.ptr
    %142 = llvm.load %141 : !llvm.ptr -> f64
    %143 = builtin.unrealized_conversion_cast %140 : memref<f64> to !llvm.ptr
    llvm.store %142, %143 : f64, !llvm.ptr
    %144 = arith.muli %const4.index, %const24.index : index
    %bytes_per_element_15 = arith.constant 1 : index
    %scaled_pointer_offset_15 = arith.muli %144, %bytes_per_element_15 : index
    %offset_pointer_75 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_76 = arith.index_cast %scaled_pointer_offset_15 : index to i64
    %offset_pointer_77 = llvm.ptrtoint %offset_pointer_75 : !llvm.ptr to i64
    %offset_pointer_78 = arith.addi %offset_pointer_77, %offset_pointer_76 : i64
    %offset_pointer_79 = llvm.inttoptr %offset_pointer_78 : i64 to !llvm.ptr
    %145 = memref.view %offset_pointer_79[%const8.index][] : !llvm.ptr to memref<f64>
    %146 = memref.alloca() : memref<f64>
    %147 = builtin.unrealized_conversion_cast %145 : memref<f64> to !llvm.ptr
    %148 = llvm.load %147 : !llvm.ptr -> f64
    %149 = builtin.unrealized_conversion_cast %146 : memref<f64> to !llvm.ptr
    llvm.store %148, %149 : f64, !llvm.ptr
    %150 = builtin.unrealized_conversion_cast %140 : memref<f64> to !llvm.ptr
    %151 = llvm.load %150 : !llvm.ptr -> f64
    %152 = builtin.unrealized_conversion_cast %146 : memref<f64> to !llvm.ptr
    %153 = llvm.load %152 : !llvm.ptr -> f64
    %154 = arith.subf %151, %153 : f64
    %155 = memref.view %118[%const8.index][] : memref<24xi8> to memref<f64>
    %156 = builtin.unrealized_conversion_cast %155 : memref<f64> to !llvm.ptr
    llvm.store %154, %156 : f64, !llvm.ptr
    %157 = arith.muli %const1.index, %const24.index : index
    %bytes_per_element_16 = arith.constant 1 : index
    %scaled_pointer_offset_16 = arith.muli %157, %bytes_per_element_16 : index
    %offset_pointer_80 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_81 = arith.index_cast %scaled_pointer_offset_16 : index to i64
    %offset_pointer_82 = llvm.ptrtoint %offset_pointer_80 : !llvm.ptr to i64
    %offset_pointer_83 = arith.addi %offset_pointer_82, %offset_pointer_81 : i64
    %offset_pointer_84 = llvm.inttoptr %offset_pointer_83 : i64 to !llvm.ptr
    %158 = memref.view %offset_pointer_84[%const16.index][] : !llvm.ptr to memref<f64>
    %159 = memref.alloca() : memref<f64>
    %160 = builtin.unrealized_conversion_cast %158 : memref<f64> to !llvm.ptr
    %161 = llvm.load %160 : !llvm.ptr -> f64
    %162 = builtin.unrealized_conversion_cast %159 : memref<f64> to !llvm.ptr
    llvm.store %161, %162 : f64, !llvm.ptr
    %163 = arith.muli %const4.index, %const24.index : index
    %bytes_per_element_17 = arith.constant 1 : index
    %scaled_pointer_offset_17 = arith.muli %163, %bytes_per_element_17 : index
    %offset_pointer_85 = builtin.unrealized_conversion_cast %face_coordArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_86 = arith.index_cast %scaled_pointer_offset_17 : index to i64
    %offset_pointer_87 = llvm.ptrtoint %offset_pointer_85 : !llvm.ptr to i64
    %offset_pointer_88 = arith.addi %offset_pointer_87, %offset_pointer_86 : i64
    %offset_pointer_89 = llvm.inttoptr %offset_pointer_88 : i64 to !llvm.ptr
    %164 = memref.view %offset_pointer_89[%const16.index][] : !llvm.ptr to memref<f64>
    %165 = memref.alloca() : memref<f64>
    %166 = builtin.unrealized_conversion_cast %164 : memref<f64> to !llvm.ptr
    %167 = llvm.load %166 : !llvm.ptr -> f64
    %168 = builtin.unrealized_conversion_cast %165 : memref<f64> to !llvm.ptr
    llvm.store %167, %168 : f64, !llvm.ptr
    %169 = builtin.unrealized_conversion_cast %159 : memref<f64> to !llvm.ptr
    %170 = llvm.load %169 : !llvm.ptr -> f64
    %171 = builtin.unrealized_conversion_cast %165 : memref<f64> to !llvm.ptr
    %172 = llvm.load %171 : !llvm.ptr -> f64
    %173 = arith.subf %170, %172 : f64
    %174 = memref.view %118[%const16.index][] : memref<24xi8> to memref<f64>
    %175 = builtin.unrealized_conversion_cast %174 : memref<f64> to !llvm.ptr
    llvm.store %173, %175 : f64, !llvm.ptr
    %176 = func.call @normL2(%2) : (memref<24xi8>) -> f64
    %177 = memref.alloca() : memref<f64>
    %178 = builtin.unrealized_conversion_cast %177 : memref<f64> to !llvm.ptr
    llvm.store %176, %178 : f64, !llvm.ptr
    %179 = func.call @normL2(%60) : (memref<24xi8>) -> f64
    %180 = memref.alloca() : memref<f64>
    %181 = builtin.unrealized_conversion_cast %180 : memref<f64> to !llvm.ptr
    llvm.store %179, %181 : f64, !llvm.ptr
    %182 = func.call @normL2(%118) : (memref<24xi8>) -> f64
    %183 = memref.alloca() : memref<f64>
    %184 = builtin.unrealized_conversion_cast %183 : memref<f64> to !llvm.ptr
    llvm.store %182, %184 : f64, !llvm.ptr
    %185 = builtin.unrealized_conversion_cast %177 : memref<f64> to !llvm.ptr
    %186 = llvm.load %185 : !llvm.ptr -> f64
    %187 = builtin.unrealized_conversion_cast %180 : memref<f64> to !llvm.ptr
    %188 = llvm.load %187 : !llvm.ptr -> f64
    %189 = builtin.unrealized_conversion_cast %183 : memref<f64> to !llvm.ptr
    %190 = llvm.load %189 : !llvm.ptr -> f64
    %191 = arith.mulf %188, %190 : f64
    %192 = arith.mulf %186, %191 : f64
    %193 = memref.alloca() : memref<f64>
    %194 = builtin.unrealized_conversion_cast %193 : memref<f64> to !llvm.ptr
    llvm.store %192, %194 : f64, !llvm.ptr
    %195 = builtin.unrealized_conversion_cast %177 : memref<f64> to !llvm.ptr
    %196 = llvm.load %195 : !llvm.ptr -> f64
    %197 = builtin.unrealized_conversion_cast %180 : memref<f64> to !llvm.ptr
    %198 = llvm.load %197 : !llvm.ptr -> f64
    %199 = arith.mulf %196, %198 : f64
    %200 = builtin.unrealized_conversion_cast %177 : memref<f64> to !llvm.ptr
    %201 = llvm.load %200 : !llvm.ptr -> f64
    %202 = builtin.unrealized_conversion_cast %183 : memref<f64> to !llvm.ptr
    %203 = llvm.load %202 : !llvm.ptr -> f64
    %204 = arith.mulf %201, %203 : f64
    %205 = builtin.unrealized_conversion_cast %180 : memref<f64> to !llvm.ptr
    %206 = llvm.load %205 : !llvm.ptr -> f64
    %207 = builtin.unrealized_conversion_cast %183 : memref<f64> to !llvm.ptr
    %208 = llvm.load %207 : !llvm.ptr -> f64
    %209 = arith.mulf %206, %208 : f64
    %210 = arith.addf %204, %209 : f64
    %211 = arith.addf %199, %210 : f64
    %212 = memref.alloca() : memref<f64>
    %213 = builtin.unrealized_conversion_cast %212 : memref<f64> to !llvm.ptr
    llvm.store %211, %213 : f64, !llvm.ptr
    %214 = builtin.unrealized_conversion_cast %193 : memref<f64> to !llvm.ptr
    %215 = llvm.load %214 : !llvm.ptr -> f64
    %216 = builtin.unrealized_conversion_cast %212 : memref<f64> to !llvm.ptr
    %217 = llvm.load %216 : !llvm.ptr -> f64
    %218 = arith.divf %215, %217 : f64
    %219 = builtin.unrealized_conversion_cast %0 : memref<i64> to !llvm.ptr
    %220 = llvm.load %219 : !llvm.ptr -> i64
    %bytes_per_element_18 = arith.constant 1 : index
    %scaled_pointer_offset_18 = arith.muli %220, %bytes_per_element_18 : i64
    %offset_pointer_90 = builtin.unrealized_conversion_cast %out_caracteristic_lengthArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_91 = arith.index_cast %scaled_pointer_offset_18 : i64 to i64
    %offset_pointer_92 = llvm.ptrtoint %offset_pointer_90 : !llvm.ptr to i64
    %offset_pointer_93 = arith.addi %offset_pointer_92, %offset_pointer_91 : i64
    %offset_pointer_94 = llvm.inttoptr %offset_pointer_93 : i64 to !llvm.ptr
    %221 = builtin.unrealized_conversion_cast %offset_pointer_94 : !llvm.ptr to !llvm.ptr
    llvm.store %218, %221 : f64, !llvm.ptr
    %222 = builtin.unrealized_conversion_cast %0 : memref<i64> to !llvm.ptr
    %223 = llvm.load %222 : !llvm.ptr -> i64
    %bytes_per_element_19 = arith.constant 1 : index
    %scaled_pointer_offset_19 = arith.muli %223, %bytes_per_element_19 : i64
    %offset_pointer_95 = builtin.unrealized_conversion_cast %out_caracteristic_lengthArg : !llvm.ptr to !llvm.ptr
    %offset_pointer_96 = arith.index_cast %scaled_pointer_offset_19 : i64 to i64
    %offset_pointer_97 = llvm.ptrtoint %offset_pointer_95 : !llvm.ptr to i64
    %offset_pointer_98 = arith.addi %offset_pointer_97, %offset_pointer_96 : i64
    %offset_pointer_99 = llvm.inttoptr %offset_pointer_98 : i64 to !llvm.ptr
    %224 = builtin.unrealized_conversion_cast %offset_pointer_99 : !llvm.ptr to !llvm.ptr
    llvm.store %const0.1.f64, %224 : f64, !llvm.ptr
    func.return %const0.i64 : i64
  }
}