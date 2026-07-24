module {
  func.func @normL2(%arg0: memref<24xi8>) -> f64 attributes {llvm.emit_c_interface} {
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c0 = arith.constant 0 : index
    %view = memref.view %arg0[%c0][] : memref<24xi8> to memref<f64>
    %alloca = memref.alloca() : memref<f64>
    %0 = memref.load %view[] : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    %view_0 = memref.view %arg0[%c0][] : memref<24xi8> to memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    %1 = memref.load %view_0[] : memref<f64>
    memref.store %1, %alloca_1[] : memref<f64>
    %2 = memref.load %alloca[] : memref<f64>
    %3 = memref.load %alloca_1[] : memref<f64>
    %4 = arith.mulf %2, %3 : f64
    %view_2 = memref.view %arg0[%c8][] : memref<24xi8> to memref<f64>
    %alloca_3 = memref.alloca() : memref<f64>
    %5 = memref.load %view_2[] : memref<f64>
    memref.store %5, %alloca_3[] : memref<f64>
    %view_4 = memref.view %arg0[%c8][] : memref<24xi8> to memref<f64>
    %alloca_5 = memref.alloca() : memref<f64>
    %6 = memref.load %view_4[] : memref<f64>
    memref.store %6, %alloca_5[] : memref<f64>
    %7 = memref.load %alloca_3[] : memref<f64>
    %8 = memref.load %alloca_5[] : memref<f64>
    %9 = arith.mulf %7, %8 : f64
    %view_6 = memref.view %arg0[%c16][] : memref<24xi8> to memref<f64>
    %alloca_7 = memref.alloca() : memref<f64>
    %10 = memref.load %view_6[] : memref<f64>
    memref.store %10, %alloca_7[] : memref<f64>
    %view_8 = memref.view %arg0[%c16][] : memref<24xi8> to memref<f64>
    %alloca_9 = memref.alloca() : memref<f64>
    %11 = memref.load %view_8[] : memref<f64>
    memref.store %11, %alloca_9[] : memref<f64>
    %12 = memref.load %alloca_7[] : memref<f64>
    %13 = memref.load %alloca_9[] : memref<f64>
    %14 = arith.mulf %12, %13 : f64
    %15 = arith.addf %9, %14 : f64
    %16 = arith.addf %4, %15 : f64
    %17 = math.sqrt %16 : f64
    return %17 : f64
  }
  func.func @xdsl_main(%arg0: memref<144xi8>, %arg1: i64, %arg2: memref<100xf64>) -> i64 attributes {llvm.emit_c_interface} {
    %c0_i64 = arith.constant 0 : i64
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c5 = arith.constant 5 : index
    %c2 = arith.constant 2 : index
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c3 = arith.constant 3 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<i64>
    memref.store %arg1, %alloca[] : memref<i64>
    %alloca_0 = memref.alloca() : memref<24xi8>
    %0 = arith.muli %c0, %c24 : index
    %view = memref.view %arg0[%0][] : memref<144xi8> to memref<24xi8>
    %view_1 = memref.view %view[%c0][] : memref<24xi8> to memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    %1 = memref.load %view_1[] : memref<f64>
    memref.store %1, %alloca_2[] : memref<f64>
    %2 = arith.muli %c3, %c24 : index
    %view_3 = memref.view %arg0[%2][] : memref<144xi8> to memref<24xi8>
    %view_4 = memref.view %view_3[%c0][] : memref<24xi8> to memref<f64>
    %alloca_5 = memref.alloca() : memref<f64>
    %3 = memref.load %view_4[] : memref<f64>
    memref.store %3, %alloca_5[] : memref<f64>
    %4 = memref.load %alloca_2[] : memref<f64>
    %5 = memref.load %alloca_5[] : memref<f64>
    %6 = arith.subf %4, %5 : f64
    %view_6 = memref.view %alloca_0[%c0][] : memref<24xi8> to memref<f64>
    memref.store %6, %view_6[] : memref<f64>
    %7 = arith.muli %c0, %c24 : index
    %view_7 = memref.view %arg0[%7][] : memref<144xi8> to memref<24xi8>
    %view_8 = memref.view %view_7[%c8][] : memref<24xi8> to memref<f64>
    %alloca_9 = memref.alloca() : memref<f64>
    %8 = memref.load %view_8[] : memref<f64>
    memref.store %8, %alloca_9[] : memref<f64>
    %9 = arith.muli %c3, %c24 : index
    %view_10 = memref.view %arg0[%9][] : memref<144xi8> to memref<24xi8>
    %view_11 = memref.view %view_10[%c8][] : memref<24xi8> to memref<f64>
    %alloca_12 = memref.alloca() : memref<f64>
    %10 = memref.load %view_11[] : memref<f64>
    memref.store %10, %alloca_12[] : memref<f64>
    %11 = memref.load %alloca_9[] : memref<f64>
    %12 = memref.load %alloca_12[] : memref<f64>
    %13 = arith.subf %11, %12 : f64
    %view_13 = memref.view %alloca_0[%c8][] : memref<24xi8> to memref<f64>
    memref.store %13, %view_13[] : memref<f64>
    %14 = arith.muli %c0, %c24 : index
    %view_14 = memref.view %arg0[%14][] : memref<144xi8> to memref<24xi8>
    %view_15 = memref.view %view_14[%c16][] : memref<24xi8> to memref<f64>
    %alloca_16 = memref.alloca() : memref<f64>
    %15 = memref.load %view_15[] : memref<f64>
    memref.store %15, %alloca_16[] : memref<f64>
    %16 = arith.muli %c3, %c24 : index
    %view_17 = memref.view %arg0[%16][] : memref<144xi8> to memref<24xi8>
    %view_18 = memref.view %view_17[%c16][] : memref<24xi8> to memref<f64>
    %alloca_19 = memref.alloca() : memref<f64>
    %17 = memref.load %view_18[] : memref<f64>
    memref.store %17, %alloca_19[] : memref<f64>
    %18 = memref.load %alloca_16[] : memref<f64>
    %19 = memref.load %alloca_19[] : memref<f64>
    %20 = arith.subf %18, %19 : f64
    %view_20 = memref.view %alloca_0[%c16][] : memref<24xi8> to memref<f64>
    memref.store %20, %view_20[] : memref<f64>
    %alloca_21 = memref.alloca() : memref<24xi8>
    %21 = arith.muli %c2, %c24 : index
    %view_22 = memref.view %arg0[%21][] : memref<144xi8> to memref<24xi8>
    %view_23 = memref.view %view_22[%c0][] : memref<24xi8> to memref<f64>
    %alloca_24 = memref.alloca() : memref<f64>
    %22 = memref.load %view_23[] : memref<f64>
    memref.store %22, %alloca_24[] : memref<f64>
    %23 = arith.muli %c5, %c24 : index
    %view_25 = memref.view %arg0[%23][] : memref<144xi8> to memref<24xi8>
    %view_26 = memref.view %view_25[%c0][] : memref<24xi8> to memref<f64>
    %alloca_27 = memref.alloca() : memref<f64>
    %24 = memref.load %view_26[] : memref<f64>
    memref.store %24, %alloca_27[] : memref<f64>
    %25 = memref.load %alloca_24[] : memref<f64>
    %26 = memref.load %alloca_27[] : memref<f64>
    %27 = arith.subf %25, %26 : f64
    %view_28 = memref.view %alloca_21[%c0][] : memref<24xi8> to memref<f64>
    memref.store %27, %view_28[] : memref<f64>
    %28 = arith.muli %c2, %c24 : index
    %view_29 = memref.view %arg0[%28][] : memref<144xi8> to memref<24xi8>
    %view_30 = memref.view %view_29[%c8][] : memref<24xi8> to memref<f64>
    %alloca_31 = memref.alloca() : memref<f64>
    %29 = memref.load %view_30[] : memref<f64>
    memref.store %29, %alloca_31[] : memref<f64>
    %30 = arith.muli %c5, %c24 : index
    %view_32 = memref.view %arg0[%30][] : memref<144xi8> to memref<24xi8>
    %view_33 = memref.view %view_32[%c8][] : memref<24xi8> to memref<f64>
    %alloca_34 = memref.alloca() : memref<f64>
    %31 = memref.load %view_33[] : memref<f64>
    memref.store %31, %alloca_34[] : memref<f64>
    %32 = memref.load %alloca_31[] : memref<f64>
    %33 = memref.load %alloca_34[] : memref<f64>
    %34 = arith.subf %32, %33 : f64
    %view_35 = memref.view %alloca_21[%c8][] : memref<24xi8> to memref<f64>
    memref.store %34, %view_35[] : memref<f64>
    %35 = arith.muli %c2, %c24 : index
    %view_36 = memref.view %arg0[%35][] : memref<144xi8> to memref<24xi8>
    %view_37 = memref.view %view_36[%c16][] : memref<24xi8> to memref<f64>
    %alloca_38 = memref.alloca() : memref<f64>
    %36 = memref.load %view_37[] : memref<f64>
    memref.store %36, %alloca_38[] : memref<f64>
    %37 = arith.muli %c5, %c24 : index
    %view_39 = memref.view %arg0[%37][] : memref<144xi8> to memref<24xi8>
    %view_40 = memref.view %view_39[%c16][] : memref<24xi8> to memref<f64>
    %alloca_41 = memref.alloca() : memref<f64>
    %38 = memref.load %view_40[] : memref<f64>
    memref.store %38, %alloca_41[] : memref<f64>
    %39 = memref.load %alloca_38[] : memref<f64>
    %40 = memref.load %alloca_41[] : memref<f64>
    %41 = arith.subf %39, %40 : f64
    %view_42 = memref.view %alloca_21[%c16][] : memref<24xi8> to memref<f64>
    memref.store %41, %view_42[] : memref<f64>
    %alloca_43 = memref.alloca() : memref<24xi8>
    %42 = arith.muli %c1, %c24 : index
    %view_44 = memref.view %arg0[%42][] : memref<144xi8> to memref<24xi8>
    %view_45 = memref.view %view_44[%c0][] : memref<24xi8> to memref<f64>
    %alloca_46 = memref.alloca() : memref<f64>
    %43 = memref.load %view_45[] : memref<f64>
    memref.store %43, %alloca_46[] : memref<f64>
    %44 = arith.muli %c4, %c24 : index
    %view_47 = memref.view %arg0[%44][] : memref<144xi8> to memref<24xi8>
    %view_48 = memref.view %view_47[%c0][] : memref<24xi8> to memref<f64>
    %alloca_49 = memref.alloca() : memref<f64>
    %45 = memref.load %view_48[] : memref<f64>
    memref.store %45, %alloca_49[] : memref<f64>
    %46 = memref.load %alloca_46[] : memref<f64>
    %47 = memref.load %alloca_49[] : memref<f64>
    %48 = arith.subf %46, %47 : f64
    %view_50 = memref.view %alloca_43[%c0][] : memref<24xi8> to memref<f64>
    memref.store %48, %view_50[] : memref<f64>
    %49 = arith.muli %c1, %c24 : index
    %view_51 = memref.view %arg0[%49][] : memref<144xi8> to memref<24xi8>
    %view_52 = memref.view %view_51[%c8][] : memref<24xi8> to memref<f64>
    %alloca_53 = memref.alloca() : memref<f64>
    %50 = memref.load %view_52[] : memref<f64>
    memref.store %50, %alloca_53[] : memref<f64>
    %51 = arith.muli %c4, %c24 : index
    %view_54 = memref.view %arg0[%51][] : memref<144xi8> to memref<24xi8>
    %view_55 = memref.view %view_54[%c8][] : memref<24xi8> to memref<f64>
    %alloca_56 = memref.alloca() : memref<f64>
    %52 = memref.load %view_55[] : memref<f64>
    memref.store %52, %alloca_56[] : memref<f64>
    %53 = memref.load %alloca_53[] : memref<f64>
    %54 = memref.load %alloca_56[] : memref<f64>
    %55 = arith.subf %53, %54 : f64
    %view_57 = memref.view %alloca_43[%c8][] : memref<24xi8> to memref<f64>
    memref.store %55, %view_57[] : memref<f64>
    %56 = arith.muli %c1, %c24 : index
    %view_58 = memref.view %arg0[%56][] : memref<144xi8> to memref<24xi8>
    %view_59 = memref.view %view_58[%c16][] : memref<24xi8> to memref<f64>
    %alloca_60 = memref.alloca() : memref<f64>
    %57 = memref.load %view_59[] : memref<f64>
    memref.store %57, %alloca_60[] : memref<f64>
    %58 = arith.muli %c4, %c24 : index
    %view_61 = memref.view %arg0[%58][] : memref<144xi8> to memref<24xi8>
    %view_62 = memref.view %view_61[%c16][] : memref<24xi8> to memref<f64>
    %alloca_63 = memref.alloca() : memref<f64>
    %59 = memref.load %view_62[] : memref<f64>
    memref.store %59, %alloca_63[] : memref<f64>
    %60 = memref.load %alloca_60[] : memref<f64>
    %61 = memref.load %alloca_63[] : memref<f64>
    %62 = arith.subf %60, %61 : f64
    %view_64 = memref.view %alloca_43[%c16][] : memref<24xi8> to memref<f64>
    memref.store %62, %view_64[] : memref<f64>
    %63 = call @normL2(%alloca_0) : (memref<24xi8>) -> f64
    %alloca_65 = memref.alloca() : memref<f64>
    memref.store %63, %alloca_65[] : memref<f64>
    %64 = call @normL2(%alloca_21) : (memref<24xi8>) -> f64
    %alloca_66 = memref.alloca() : memref<f64>
    memref.store %64, %alloca_66[] : memref<f64>
    %65 = call @normL2(%alloca_43) : (memref<24xi8>) -> f64
    %alloca_67 = memref.alloca() : memref<f64>
    memref.store %65, %alloca_67[] : memref<f64>
    %66 = memref.load %alloca_65[] : memref<f64>
    %67 = memref.load %alloca_66[] : memref<f64>
    %68 = memref.load %alloca_67[] : memref<f64>
    %69 = arith.mulf %67, %68 : f64
    %70 = arith.mulf %66, %69 : f64
    %alloca_68 = memref.alloca() : memref<f64>
    memref.store %70, %alloca_68[] : memref<f64>
    %71 = memref.load %alloca_65[] : memref<f64>
    %72 = memref.load %alloca_66[] : memref<f64>
    %73 = arith.mulf %71, %72 : f64
    %74 = memref.load %alloca_65[] : memref<f64>
    %75 = memref.load %alloca_67[] : memref<f64>
    %76 = arith.mulf %74, %75 : f64
    %77 = memref.load %alloca_66[] : memref<f64>
    %78 = memref.load %alloca_67[] : memref<f64>
    %79 = arith.mulf %77, %78 : f64
    %80 = arith.addf %76, %79 : f64
    %81 = arith.addf %73, %80 : f64
    %alloca_69 = memref.alloca() : memref<f64>
    memref.store %81, %alloca_69[] : memref<f64>
    %82 = memref.load %alloca_68[] : memref<f64>
    %83 = memref.load %alloca_69[] : memref<f64>
    %84 = arith.divf %82, %83 : f64
    %85 = memref.load %alloca[] : memref<i64>
    %86 = arith.index_cast %85 : i64 to index
    memref.store %84, %arg2[%86] : memref<100xf64>
    return %c0_i64 : i64
  }
}
