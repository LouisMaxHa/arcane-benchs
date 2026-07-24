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
  func.func @xdsl_main(%arg0: memref<192xi8>, %arg1: i64, %arg2: memref<100xf64>) -> i64 attributes {llvm.emit_c_interface} {
    %c0_i64 = arith.constant 0 : i64
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c7 = arith.constant 7 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c16 = arith.constant 16 : index
    %c8 = arith.constant 8 : index
    %c3 = arith.constant 3 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 2.500000e-01 : f64
    %alloca = memref.alloca() : memref<i64>
    memref.store %arg1, %alloca[] : memref<i64>
    %alloca_0 = memref.alloca() : memref<144xi8>
    %alloca_1 = memref.alloca() : memref<f64>
    memref.store %cst, %alloca_1[] : memref<f64>
    %0 = arith.muli %c0, %c24 : index
    %view = memref.view %arg0[%0][] : memref<192xi8> to memref<24xi8>
    %view_2 = memref.view %view[%c0][] : memref<24xi8> to memref<f64>
    %alloca_3 = memref.alloca() : memref<f64>
    %1 = memref.load %view_2[] : memref<f64>
    memref.store %1, %alloca_3[] : memref<f64>
    %2 = arith.muli %c3, %c24 : index
    %view_4 = memref.view %arg0[%2][] : memref<192xi8> to memref<24xi8>
    %view_5 = memref.view %view_4[%c0][] : memref<24xi8> to memref<f64>
    %alloca_6 = memref.alloca() : memref<f64>
    %3 = memref.load %view_5[] : memref<f64>
    memref.store %3, %alloca_6[] : memref<f64>
    %4 = memref.load %alloca_3[] : memref<f64>
    %5 = memref.load %alloca_6[] : memref<f64>
    %6 = arith.addf %4, %5 : f64
    %7 = arith.muli %c0, %c24 : index
    %view_7 = memref.view %alloca_0[%7][] : memref<144xi8> to memref<24xi8>
    %view_8 = memref.view %view_7[%c0][] : memref<24xi8> to memref<f64>
    memref.store %6, %view_8[] : memref<f64>
    %8 = arith.muli %c0, %c24 : index
    %view_9 = memref.view %arg0[%8][] : memref<192xi8> to memref<24xi8>
    %view_10 = memref.view %view_9[%c8][] : memref<24xi8> to memref<f64>
    %alloca_11 = memref.alloca() : memref<f64>
    %9 = memref.load %view_10[] : memref<f64>
    memref.store %9, %alloca_11[] : memref<f64>
    %10 = arith.muli %c3, %c24 : index
    %view_12 = memref.view %arg0[%10][] : memref<192xi8> to memref<24xi8>
    %view_13 = memref.view %view_12[%c8][] : memref<24xi8> to memref<f64>
    %alloca_14 = memref.alloca() : memref<f64>
    %11 = memref.load %view_13[] : memref<f64>
    memref.store %11, %alloca_14[] : memref<f64>
    %12 = memref.load %alloca_11[] : memref<f64>
    %13 = memref.load %alloca_14[] : memref<f64>
    %14 = arith.addf %12, %13 : f64
    %15 = arith.muli %c0, %c24 : index
    %view_15 = memref.view %alloca_0[%15][] : memref<144xi8> to memref<24xi8>
    %view_16 = memref.view %view_15[%c8][] : memref<24xi8> to memref<f64>
    memref.store %14, %view_16[] : memref<f64>
    %16 = arith.muli %c0, %c24 : index
    %view_17 = memref.view %arg0[%16][] : memref<192xi8> to memref<24xi8>
    %view_18 = memref.view %view_17[%c16][] : memref<24xi8> to memref<f64>
    %alloca_19 = memref.alloca() : memref<f64>
    %17 = memref.load %view_18[] : memref<f64>
    memref.store %17, %alloca_19[] : memref<f64>
    %18 = arith.muli %c3, %c24 : index
    %view_20 = memref.view %arg0[%18][] : memref<192xi8> to memref<24xi8>
    %view_21 = memref.view %view_20[%c16][] : memref<24xi8> to memref<f64>
    %alloca_22 = memref.alloca() : memref<f64>
    %19 = memref.load %view_21[] : memref<f64>
    memref.store %19, %alloca_22[] : memref<f64>
    %20 = memref.load %alloca_19[] : memref<f64>
    %21 = memref.load %alloca_22[] : memref<f64>
    %22 = arith.addf %20, %21 : f64
    %23 = arith.muli %c0, %c24 : index
    %view_23 = memref.view %alloca_0[%23][] : memref<144xi8> to memref<24xi8>
    %view_24 = memref.view %view_23[%c16][] : memref<24xi8> to memref<f64>
    memref.store %22, %view_24[] : memref<f64>
    %24 = arith.muli %c0, %c24 : index
    %view_25 = memref.view %alloca_0[%24][] : memref<144xi8> to memref<24xi8>
    %view_26 = memref.view %view_25[%c0][] : memref<24xi8> to memref<f64>
    %alloca_27 = memref.alloca() : memref<f64>
    %25 = memref.load %view_26[] : memref<f64>
    memref.store %25, %alloca_27[] : memref<f64>
    %26 = arith.muli %c2, %c24 : index
    %view_28 = memref.view %arg0[%26][] : memref<192xi8> to memref<24xi8>
    %view_29 = memref.view %view_28[%c0][] : memref<24xi8> to memref<f64>
    %alloca_30 = memref.alloca() : memref<f64>
    %27 = memref.load %view_29[] : memref<f64>
    memref.store %27, %alloca_30[] : memref<f64>
    %28 = memref.load %alloca_27[] : memref<f64>
    %29 = memref.load %alloca_30[] : memref<f64>
    %30 = arith.addf %28, %29 : f64
    %31 = arith.muli %c0, %c24 : index
    %view_31 = memref.view %alloca_0[%31][] : memref<144xi8> to memref<24xi8>
    %view_32 = memref.view %view_31[%c0][] : memref<24xi8> to memref<f64>
    memref.store %30, %view_32[] : memref<f64>
    %32 = arith.muli %c0, %c24 : index
    %view_33 = memref.view %alloca_0[%32][] : memref<144xi8> to memref<24xi8>
    %view_34 = memref.view %view_33[%c8][] : memref<24xi8> to memref<f64>
    %alloca_35 = memref.alloca() : memref<f64>
    %33 = memref.load %view_34[] : memref<f64>
    memref.store %33, %alloca_35[] : memref<f64>
    %34 = arith.muli %c2, %c24 : index
    %view_36 = memref.view %arg0[%34][] : memref<192xi8> to memref<24xi8>
    %view_37 = memref.view %view_36[%c8][] : memref<24xi8> to memref<f64>
    %alloca_38 = memref.alloca() : memref<f64>
    %35 = memref.load %view_37[] : memref<f64>
    memref.store %35, %alloca_38[] : memref<f64>
    %36 = memref.load %alloca_35[] : memref<f64>
    %37 = memref.load %alloca_38[] : memref<f64>
    %38 = arith.addf %36, %37 : f64
    %39 = arith.muli %c0, %c24 : index
    %view_39 = memref.view %alloca_0[%39][] : memref<144xi8> to memref<24xi8>
    %view_40 = memref.view %view_39[%c8][] : memref<24xi8> to memref<f64>
    memref.store %38, %view_40[] : memref<f64>
    %40 = arith.muli %c0, %c24 : index
    %view_41 = memref.view %alloca_0[%40][] : memref<144xi8> to memref<24xi8>
    %view_42 = memref.view %view_41[%c16][] : memref<24xi8> to memref<f64>
    %alloca_43 = memref.alloca() : memref<f64>
    %41 = memref.load %view_42[] : memref<f64>
    memref.store %41, %alloca_43[] : memref<f64>
    %42 = arith.muli %c2, %c24 : index
    %view_44 = memref.view %arg0[%42][] : memref<192xi8> to memref<24xi8>
    %view_45 = memref.view %view_44[%c16][] : memref<24xi8> to memref<f64>
    %alloca_46 = memref.alloca() : memref<f64>
    %43 = memref.load %view_45[] : memref<f64>
    memref.store %43, %alloca_46[] : memref<f64>
    %44 = memref.load %alloca_43[] : memref<f64>
    %45 = memref.load %alloca_46[] : memref<f64>
    %46 = arith.addf %44, %45 : f64
    %47 = arith.muli %c0, %c24 : index
    %view_47 = memref.view %alloca_0[%47][] : memref<144xi8> to memref<24xi8>
    %view_48 = memref.view %view_47[%c16][] : memref<24xi8> to memref<f64>
    memref.store %46, %view_48[] : memref<f64>
    %48 = arith.muli %c0, %c24 : index
    %view_49 = memref.view %alloca_0[%48][] : memref<144xi8> to memref<24xi8>
    %view_50 = memref.view %view_49[%c0][] : memref<24xi8> to memref<f64>
    %alloca_51 = memref.alloca() : memref<f64>
    %49 = memref.load %view_50[] : memref<f64>
    memref.store %49, %alloca_51[] : memref<f64>
    %50 = arith.muli %c1, %c24 : index
    %view_52 = memref.view %arg0[%50][] : memref<192xi8> to memref<24xi8>
    %view_53 = memref.view %view_52[%c0][] : memref<24xi8> to memref<f64>
    %alloca_54 = memref.alloca() : memref<f64>
    %51 = memref.load %view_53[] : memref<f64>
    memref.store %51, %alloca_54[] : memref<f64>
    %52 = memref.load %alloca_51[] : memref<f64>
    %53 = memref.load %alloca_54[] : memref<f64>
    %54 = arith.addf %52, %53 : f64
    %55 = arith.muli %c0, %c24 : index
    %view_55 = memref.view %alloca_0[%55][] : memref<144xi8> to memref<24xi8>
    %view_56 = memref.view %view_55[%c0][] : memref<24xi8> to memref<f64>
    memref.store %54, %view_56[] : memref<f64>
    %56 = arith.muli %c0, %c24 : index
    %view_57 = memref.view %alloca_0[%56][] : memref<144xi8> to memref<24xi8>
    %view_58 = memref.view %view_57[%c8][] : memref<24xi8> to memref<f64>
    %alloca_59 = memref.alloca() : memref<f64>
    %57 = memref.load %view_58[] : memref<f64>
    memref.store %57, %alloca_59[] : memref<f64>
    %58 = arith.muli %c1, %c24 : index
    %view_60 = memref.view %arg0[%58][] : memref<192xi8> to memref<24xi8>
    %view_61 = memref.view %view_60[%c8][] : memref<24xi8> to memref<f64>
    %alloca_62 = memref.alloca() : memref<f64>
    %59 = memref.load %view_61[] : memref<f64>
    memref.store %59, %alloca_62[] : memref<f64>
    %60 = memref.load %alloca_59[] : memref<f64>
    %61 = memref.load %alloca_62[] : memref<f64>
    %62 = arith.addf %60, %61 : f64
    %63 = arith.muli %c0, %c24 : index
    %view_63 = memref.view %alloca_0[%63][] : memref<144xi8> to memref<24xi8>
    %view_64 = memref.view %view_63[%c8][] : memref<24xi8> to memref<f64>
    memref.store %62, %view_64[] : memref<f64>
    %64 = arith.muli %c0, %c24 : index
    %view_65 = memref.view %alloca_0[%64][] : memref<144xi8> to memref<24xi8>
    %view_66 = memref.view %view_65[%c16][] : memref<24xi8> to memref<f64>
    %alloca_67 = memref.alloca() : memref<f64>
    %65 = memref.load %view_66[] : memref<f64>
    memref.store %65, %alloca_67[] : memref<f64>
    %66 = arith.muli %c1, %c24 : index
    %view_68 = memref.view %arg0[%66][] : memref<192xi8> to memref<24xi8>
    %view_69 = memref.view %view_68[%c16][] : memref<24xi8> to memref<f64>
    %alloca_70 = memref.alloca() : memref<f64>
    %67 = memref.load %view_69[] : memref<f64>
    memref.store %67, %alloca_70[] : memref<f64>
    %68 = memref.load %alloca_67[] : memref<f64>
    %69 = memref.load %alloca_70[] : memref<f64>
    %70 = arith.addf %68, %69 : f64
    %71 = arith.muli %c0, %c24 : index
    %view_71 = memref.view %alloca_0[%71][] : memref<144xi8> to memref<24xi8>
    %view_72 = memref.view %view_71[%c16][] : memref<24xi8> to memref<f64>
    memref.store %70, %view_72[] : memref<f64>
    %72 = arith.muli %c0, %c24 : index
    %view_73 = memref.view %alloca_0[%72][] : memref<144xi8> to memref<24xi8>
    %view_74 = memref.view %view_73[%c0][] : memref<24xi8> to memref<f64>
    %alloca_75 = memref.alloca() : memref<f64>
    %73 = memref.load %view_74[] : memref<f64>
    memref.store %73, %alloca_75[] : memref<f64>
    %74 = memref.load %alloca_1[] : memref<f64>
    %75 = memref.load %alloca_75[] : memref<f64>
    %76 = arith.mulf %75, %74 : f64
    %77 = arith.muli %c0, %c24 : index
    %view_76 = memref.view %alloca_0[%77][] : memref<144xi8> to memref<24xi8>
    %view_77 = memref.view %view_76[%c0][] : memref<24xi8> to memref<f64>
    memref.store %76, %view_77[] : memref<f64>
    %78 = arith.muli %c0, %c24 : index
    %view_78 = memref.view %alloca_0[%78][] : memref<144xi8> to memref<24xi8>
    %view_79 = memref.view %view_78[%c8][] : memref<24xi8> to memref<f64>
    %alloca_80 = memref.alloca() : memref<f64>
    %79 = memref.load %view_79[] : memref<f64>
    memref.store %79, %alloca_80[] : memref<f64>
    %80 = memref.load %alloca_1[] : memref<f64>
    %81 = memref.load %alloca_80[] : memref<f64>
    %82 = arith.mulf %81, %80 : f64
    %83 = arith.muli %c0, %c24 : index
    %view_81 = memref.view %alloca_0[%83][] : memref<144xi8> to memref<24xi8>
    %view_82 = memref.view %view_81[%c8][] : memref<24xi8> to memref<f64>
    memref.store %82, %view_82[] : memref<f64>
    %84 = arith.muli %c0, %c24 : index
    %view_83 = memref.view %alloca_0[%84][] : memref<144xi8> to memref<24xi8>
    %view_84 = memref.view %view_83[%c16][] : memref<24xi8> to memref<f64>
    %alloca_85 = memref.alloca() : memref<f64>
    %85 = memref.load %view_84[] : memref<f64>
    memref.store %85, %alloca_85[] : memref<f64>
    %86 = memref.load %alloca_1[] : memref<f64>
    %87 = memref.load %alloca_85[] : memref<f64>
    %88 = arith.mulf %87, %86 : f64
    %89 = arith.muli %c0, %c24 : index
    %view_86 = memref.view %alloca_0[%89][] : memref<144xi8> to memref<24xi8>
    %view_87 = memref.view %view_86[%c16][] : memref<24xi8> to memref<f64>
    memref.store %88, %view_87[] : memref<f64>
    %90 = arith.muli %c0, %c24 : index
    %view_88 = memref.view %arg0[%90][] : memref<192xi8> to memref<24xi8>
    %view_89 = memref.view %view_88[%c0][] : memref<24xi8> to memref<f64>
    %alloca_90 = memref.alloca() : memref<f64>
    %91 = memref.load %view_89[] : memref<f64>
    memref.store %91, %alloca_90[] : memref<f64>
    %92 = arith.muli %c4, %c24 : index
    %view_91 = memref.view %arg0[%92][] : memref<192xi8> to memref<24xi8>
    %view_92 = memref.view %view_91[%c0][] : memref<24xi8> to memref<f64>
    %alloca_93 = memref.alloca() : memref<f64>
    %93 = memref.load %view_92[] : memref<f64>
    memref.store %93, %alloca_93[] : memref<f64>
    %94 = memref.load %alloca_90[] : memref<f64>
    %95 = memref.load %alloca_93[] : memref<f64>
    %96 = arith.addf %94, %95 : f64
    %97 = arith.muli %c1, %c24 : index
    %view_94 = memref.view %alloca_0[%97][] : memref<144xi8> to memref<24xi8>
    %view_95 = memref.view %view_94[%c0][] : memref<24xi8> to memref<f64>
    memref.store %96, %view_95[] : memref<f64>
    %98 = arith.muli %c0, %c24 : index
    %view_96 = memref.view %arg0[%98][] : memref<192xi8> to memref<24xi8>
    %view_97 = memref.view %view_96[%c8][] : memref<24xi8> to memref<f64>
    %alloca_98 = memref.alloca() : memref<f64>
    %99 = memref.load %view_97[] : memref<f64>
    memref.store %99, %alloca_98[] : memref<f64>
    %100 = arith.muli %c4, %c24 : index
    %view_99 = memref.view %arg0[%100][] : memref<192xi8> to memref<24xi8>
    %view_100 = memref.view %view_99[%c8][] : memref<24xi8> to memref<f64>
    %alloca_101 = memref.alloca() : memref<f64>
    %101 = memref.load %view_100[] : memref<f64>
    memref.store %101, %alloca_101[] : memref<f64>
    %102 = memref.load %alloca_98[] : memref<f64>
    %103 = memref.load %alloca_101[] : memref<f64>
    %104 = arith.addf %102, %103 : f64
    %105 = arith.muli %c1, %c24 : index
    %view_102 = memref.view %alloca_0[%105][] : memref<144xi8> to memref<24xi8>
    %view_103 = memref.view %view_102[%c8][] : memref<24xi8> to memref<f64>
    memref.store %104, %view_103[] : memref<f64>
    %106 = arith.muli %c0, %c24 : index
    %view_104 = memref.view %arg0[%106][] : memref<192xi8> to memref<24xi8>
    %view_105 = memref.view %view_104[%c16][] : memref<24xi8> to memref<f64>
    %alloca_106 = memref.alloca() : memref<f64>
    %107 = memref.load %view_105[] : memref<f64>
    memref.store %107, %alloca_106[] : memref<f64>
    %108 = arith.muli %c4, %c24 : index
    %view_107 = memref.view %arg0[%108][] : memref<192xi8> to memref<24xi8>
    %view_108 = memref.view %view_107[%c16][] : memref<24xi8> to memref<f64>
    %alloca_109 = memref.alloca() : memref<f64>
    %109 = memref.load %view_108[] : memref<f64>
    memref.store %109, %alloca_109[] : memref<f64>
    %110 = memref.load %alloca_106[] : memref<f64>
    %111 = memref.load %alloca_109[] : memref<f64>
    %112 = arith.addf %110, %111 : f64
    %113 = arith.muli %c1, %c24 : index
    %view_110 = memref.view %alloca_0[%113][] : memref<144xi8> to memref<24xi8>
    %view_111 = memref.view %view_110[%c16][] : memref<24xi8> to memref<f64>
    memref.store %112, %view_111[] : memref<f64>
    %114 = arith.muli %c1, %c24 : index
    %view_112 = memref.view %alloca_0[%114][] : memref<144xi8> to memref<24xi8>
    %view_113 = memref.view %view_112[%c0][] : memref<24xi8> to memref<f64>
    %alloca_114 = memref.alloca() : memref<f64>
    %115 = memref.load %view_113[] : memref<f64>
    memref.store %115, %alloca_114[] : memref<f64>
    %116 = arith.muli %c7, %c24 : index
    %view_115 = memref.view %arg0[%116][] : memref<192xi8> to memref<24xi8>
    %view_116 = memref.view %view_115[%c0][] : memref<24xi8> to memref<f64>
    %alloca_117 = memref.alloca() : memref<f64>
    %117 = memref.load %view_116[] : memref<f64>
    memref.store %117, %alloca_117[] : memref<f64>
    %118 = memref.load %alloca_114[] : memref<f64>
    %119 = memref.load %alloca_117[] : memref<f64>
    %120 = arith.addf %118, %119 : f64
    %121 = arith.muli %c1, %c24 : index
    %view_118 = memref.view %alloca_0[%121][] : memref<144xi8> to memref<24xi8>
    %view_119 = memref.view %view_118[%c0][] : memref<24xi8> to memref<f64>
    memref.store %120, %view_119[] : memref<f64>
    %122 = arith.muli %c1, %c24 : index
    %view_120 = memref.view %alloca_0[%122][] : memref<144xi8> to memref<24xi8>
    %view_121 = memref.view %view_120[%c8][] : memref<24xi8> to memref<f64>
    %alloca_122 = memref.alloca() : memref<f64>
    %123 = memref.load %view_121[] : memref<f64>
    memref.store %123, %alloca_122[] : memref<f64>
    %124 = arith.muli %c7, %c24 : index
    %view_123 = memref.view %arg0[%124][] : memref<192xi8> to memref<24xi8>
    %view_124 = memref.view %view_123[%c8][] : memref<24xi8> to memref<f64>
    %alloca_125 = memref.alloca() : memref<f64>
    %125 = memref.load %view_124[] : memref<f64>
    memref.store %125, %alloca_125[] : memref<f64>
    %126 = memref.load %alloca_122[] : memref<f64>
    %127 = memref.load %alloca_125[] : memref<f64>
    %128 = arith.addf %126, %127 : f64
    %129 = arith.muli %c1, %c24 : index
    %view_126 = memref.view %alloca_0[%129][] : memref<144xi8> to memref<24xi8>
    %view_127 = memref.view %view_126[%c8][] : memref<24xi8> to memref<f64>
    memref.store %128, %view_127[] : memref<f64>
    %130 = arith.muli %c1, %c24 : index
    %view_128 = memref.view %alloca_0[%130][] : memref<144xi8> to memref<24xi8>
    %view_129 = memref.view %view_128[%c16][] : memref<24xi8> to memref<f64>
    %alloca_130 = memref.alloca() : memref<f64>
    %131 = memref.load %view_129[] : memref<f64>
    memref.store %131, %alloca_130[] : memref<f64>
    %132 = arith.muli %c7, %c24 : index
    %view_131 = memref.view %arg0[%132][] : memref<192xi8> to memref<24xi8>
    %view_132 = memref.view %view_131[%c16][] : memref<24xi8> to memref<f64>
    %alloca_133 = memref.alloca() : memref<f64>
    %133 = memref.load %view_132[] : memref<f64>
    memref.store %133, %alloca_133[] : memref<f64>
    %134 = memref.load %alloca_130[] : memref<f64>
    %135 = memref.load %alloca_133[] : memref<f64>
    %136 = arith.addf %134, %135 : f64
    %137 = arith.muli %c1, %c24 : index
    %view_134 = memref.view %alloca_0[%137][] : memref<144xi8> to memref<24xi8>
    %view_135 = memref.view %view_134[%c16][] : memref<24xi8> to memref<f64>
    memref.store %136, %view_135[] : memref<f64>
    %138 = arith.muli %c1, %c24 : index
    %view_136 = memref.view %alloca_0[%138][] : memref<144xi8> to memref<24xi8>
    %view_137 = memref.view %view_136[%c0][] : memref<24xi8> to memref<f64>
    %alloca_138 = memref.alloca() : memref<f64>
    %139 = memref.load %view_137[] : memref<f64>
    memref.store %139, %alloca_138[] : memref<f64>
    %140 = arith.muli %c3, %c24 : index
    %view_139 = memref.view %arg0[%140][] : memref<192xi8> to memref<24xi8>
    %view_140 = memref.view %view_139[%c0][] : memref<24xi8> to memref<f64>
    %alloca_141 = memref.alloca() : memref<f64>
    %141 = memref.load %view_140[] : memref<f64>
    memref.store %141, %alloca_141[] : memref<f64>
    %142 = memref.load %alloca_138[] : memref<f64>
    %143 = memref.load %alloca_141[] : memref<f64>
    %144 = arith.addf %142, %143 : f64
    %145 = arith.muli %c1, %c24 : index
    %view_142 = memref.view %alloca_0[%145][] : memref<144xi8> to memref<24xi8>
    %view_143 = memref.view %view_142[%c0][] : memref<24xi8> to memref<f64>
    memref.store %144, %view_143[] : memref<f64>
    %146 = arith.muli %c1, %c24 : index
    %view_144 = memref.view %alloca_0[%146][] : memref<144xi8> to memref<24xi8>
    %view_145 = memref.view %view_144[%c8][] : memref<24xi8> to memref<f64>
    %alloca_146 = memref.alloca() : memref<f64>
    %147 = memref.load %view_145[] : memref<f64>
    memref.store %147, %alloca_146[] : memref<f64>
    %148 = arith.muli %c3, %c24 : index
    %view_147 = memref.view %arg0[%148][] : memref<192xi8> to memref<24xi8>
    %view_148 = memref.view %view_147[%c8][] : memref<24xi8> to memref<f64>
    %alloca_149 = memref.alloca() : memref<f64>
    %149 = memref.load %view_148[] : memref<f64>
    memref.store %149, %alloca_149[] : memref<f64>
    %150 = memref.load %alloca_146[] : memref<f64>
    %151 = memref.load %alloca_149[] : memref<f64>
    %152 = arith.addf %150, %151 : f64
    %153 = arith.muli %c1, %c24 : index
    %view_150 = memref.view %alloca_0[%153][] : memref<144xi8> to memref<24xi8>
    %view_151 = memref.view %view_150[%c8][] : memref<24xi8> to memref<f64>
    memref.store %152, %view_151[] : memref<f64>
    %154 = arith.muli %c1, %c24 : index
    %view_152 = memref.view %alloca_0[%154][] : memref<144xi8> to memref<24xi8>
    %view_153 = memref.view %view_152[%c16][] : memref<24xi8> to memref<f64>
    %alloca_154 = memref.alloca() : memref<f64>
    %155 = memref.load %view_153[] : memref<f64>
    memref.store %155, %alloca_154[] : memref<f64>
    %156 = arith.muli %c3, %c24 : index
    %view_155 = memref.view %arg0[%156][] : memref<192xi8> to memref<24xi8>
    %view_156 = memref.view %view_155[%c16][] : memref<24xi8> to memref<f64>
    %alloca_157 = memref.alloca() : memref<f64>
    %157 = memref.load %view_156[] : memref<f64>
    memref.store %157, %alloca_157[] : memref<f64>
    %158 = memref.load %alloca_154[] : memref<f64>
    %159 = memref.load %alloca_157[] : memref<f64>
    %160 = arith.addf %158, %159 : f64
    %161 = arith.muli %c1, %c24 : index
    %view_158 = memref.view %alloca_0[%161][] : memref<144xi8> to memref<24xi8>
    %view_159 = memref.view %view_158[%c16][] : memref<24xi8> to memref<f64>
    memref.store %160, %view_159[] : memref<f64>
    %162 = arith.muli %c1, %c24 : index
    %view_160 = memref.view %alloca_0[%162][] : memref<144xi8> to memref<24xi8>
    %view_161 = memref.view %view_160[%c0][] : memref<24xi8> to memref<f64>
    %alloca_162 = memref.alloca() : memref<f64>
    %163 = memref.load %view_161[] : memref<f64>
    memref.store %163, %alloca_162[] : memref<f64>
    %164 = memref.load %alloca_1[] : memref<f64>
    %165 = memref.load %alloca_162[] : memref<f64>
    %166 = arith.mulf %165, %164 : f64
    %167 = arith.muli %c1, %c24 : index
    %view_163 = memref.view %alloca_0[%167][] : memref<144xi8> to memref<24xi8>
    %view_164 = memref.view %view_163[%c0][] : memref<24xi8> to memref<f64>
    memref.store %166, %view_164[] : memref<f64>
    %168 = arith.muli %c1, %c24 : index
    %view_165 = memref.view %alloca_0[%168][] : memref<144xi8> to memref<24xi8>
    %view_166 = memref.view %view_165[%c8][] : memref<24xi8> to memref<f64>
    %alloca_167 = memref.alloca() : memref<f64>
    %169 = memref.load %view_166[] : memref<f64>
    memref.store %169, %alloca_167[] : memref<f64>
    %170 = memref.load %alloca_1[] : memref<f64>
    %171 = memref.load %alloca_167[] : memref<f64>
    %172 = arith.mulf %171, %170 : f64
    %173 = arith.muli %c1, %c24 : index
    %view_168 = memref.view %alloca_0[%173][] : memref<144xi8> to memref<24xi8>
    %view_169 = memref.view %view_168[%c8][] : memref<24xi8> to memref<f64>
    memref.store %172, %view_169[] : memref<f64>
    %174 = arith.muli %c1, %c24 : index
    %view_170 = memref.view %alloca_0[%174][] : memref<144xi8> to memref<24xi8>
    %view_171 = memref.view %view_170[%c16][] : memref<24xi8> to memref<f64>
    %alloca_172 = memref.alloca() : memref<f64>
    %175 = memref.load %view_171[] : memref<f64>
    memref.store %175, %alloca_172[] : memref<f64>
    %176 = memref.load %alloca_1[] : memref<f64>
    %177 = memref.load %alloca_172[] : memref<f64>
    %178 = arith.mulf %177, %176 : f64
    %179 = arith.muli %c1, %c24 : index
    %view_173 = memref.view %alloca_0[%179][] : memref<144xi8> to memref<24xi8>
    %view_174 = memref.view %view_173[%c16][] : memref<24xi8> to memref<f64>
    memref.store %178, %view_174[] : memref<f64>
    %180 = arith.muli %c0, %c24 : index
    %view_175 = memref.view %arg0[%180][] : memref<192xi8> to memref<24xi8>
    %view_176 = memref.view %view_175[%c0][] : memref<24xi8> to memref<f64>
    %alloca_177 = memref.alloca() : memref<f64>
    %181 = memref.load %view_176[] : memref<f64>
    memref.store %181, %alloca_177[] : memref<f64>
    %182 = arith.muli %c1, %c24 : index
    %view_178 = memref.view %arg0[%182][] : memref<192xi8> to memref<24xi8>
    %view_179 = memref.view %view_178[%c0][] : memref<24xi8> to memref<f64>
    %alloca_180 = memref.alloca() : memref<f64>
    %183 = memref.load %view_179[] : memref<f64>
    memref.store %183, %alloca_180[] : memref<f64>
    %184 = memref.load %alloca_177[] : memref<f64>
    %185 = memref.load %alloca_180[] : memref<f64>
    %186 = arith.addf %184, %185 : f64
    %187 = arith.muli %c2, %c24 : index
    %view_181 = memref.view %alloca_0[%187][] : memref<144xi8> to memref<24xi8>
    %view_182 = memref.view %view_181[%c0][] : memref<24xi8> to memref<f64>
    memref.store %186, %view_182[] : memref<f64>
    %188 = arith.muli %c0, %c24 : index
    %view_183 = memref.view %arg0[%188][] : memref<192xi8> to memref<24xi8>
    %view_184 = memref.view %view_183[%c8][] : memref<24xi8> to memref<f64>
    %alloca_185 = memref.alloca() : memref<f64>
    %189 = memref.load %view_184[] : memref<f64>
    memref.store %189, %alloca_185[] : memref<f64>
    %190 = arith.muli %c1, %c24 : index
    %view_186 = memref.view %arg0[%190][] : memref<192xi8> to memref<24xi8>
    %view_187 = memref.view %view_186[%c8][] : memref<24xi8> to memref<f64>
    %alloca_188 = memref.alloca() : memref<f64>
    %191 = memref.load %view_187[] : memref<f64>
    memref.store %191, %alloca_188[] : memref<f64>
    %192 = memref.load %alloca_185[] : memref<f64>
    %193 = memref.load %alloca_188[] : memref<f64>
    %194 = arith.addf %192, %193 : f64
    %195 = arith.muli %c2, %c24 : index
    %view_189 = memref.view %alloca_0[%195][] : memref<144xi8> to memref<24xi8>
    %view_190 = memref.view %view_189[%c8][] : memref<24xi8> to memref<f64>
    memref.store %194, %view_190[] : memref<f64>
    %196 = arith.muli %c0, %c24 : index
    %view_191 = memref.view %arg0[%196][] : memref<192xi8> to memref<24xi8>
    %view_192 = memref.view %view_191[%c16][] : memref<24xi8> to memref<f64>
    %alloca_193 = memref.alloca() : memref<f64>
    %197 = memref.load %view_192[] : memref<f64>
    memref.store %197, %alloca_193[] : memref<f64>
    %198 = arith.muli %c1, %c24 : index
    %view_194 = memref.view %arg0[%198][] : memref<192xi8> to memref<24xi8>
    %view_195 = memref.view %view_194[%c16][] : memref<24xi8> to memref<f64>
    %alloca_196 = memref.alloca() : memref<f64>
    %199 = memref.load %view_195[] : memref<f64>
    memref.store %199, %alloca_196[] : memref<f64>
    %200 = memref.load %alloca_193[] : memref<f64>
    %201 = memref.load %alloca_196[] : memref<f64>
    %202 = arith.addf %200, %201 : f64
    %203 = arith.muli %c2, %c24 : index
    %view_197 = memref.view %alloca_0[%203][] : memref<144xi8> to memref<24xi8>
    %view_198 = memref.view %view_197[%c16][] : memref<24xi8> to memref<f64>
    memref.store %202, %view_198[] : memref<f64>
    %204 = arith.muli %c2, %c24 : index
    %view_199 = memref.view %alloca_0[%204][] : memref<144xi8> to memref<24xi8>
    %view_200 = memref.view %view_199[%c0][] : memref<24xi8> to memref<f64>
    %alloca_201 = memref.alloca() : memref<f64>
    %205 = memref.load %view_200[] : memref<f64>
    memref.store %205, %alloca_201[] : memref<f64>
    %206 = arith.muli %c5, %c24 : index
    %view_202 = memref.view %arg0[%206][] : memref<192xi8> to memref<24xi8>
    %view_203 = memref.view %view_202[%c0][] : memref<24xi8> to memref<f64>
    %alloca_204 = memref.alloca() : memref<f64>
    %207 = memref.load %view_203[] : memref<f64>
    memref.store %207, %alloca_204[] : memref<f64>
    %208 = memref.load %alloca_201[] : memref<f64>
    %209 = memref.load %alloca_204[] : memref<f64>
    %210 = arith.addf %208, %209 : f64
    %211 = arith.muli %c2, %c24 : index
    %view_205 = memref.view %alloca_0[%211][] : memref<144xi8> to memref<24xi8>
    %view_206 = memref.view %view_205[%c0][] : memref<24xi8> to memref<f64>
    memref.store %210, %view_206[] : memref<f64>
    %212 = arith.muli %c2, %c24 : index
    %view_207 = memref.view %alloca_0[%212][] : memref<144xi8> to memref<24xi8>
    %view_208 = memref.view %view_207[%c8][] : memref<24xi8> to memref<f64>
    %alloca_209 = memref.alloca() : memref<f64>
    %213 = memref.load %view_208[] : memref<f64>
    memref.store %213, %alloca_209[] : memref<f64>
    %214 = arith.muli %c5, %c24 : index
    %view_210 = memref.view %arg0[%214][] : memref<192xi8> to memref<24xi8>
    %view_211 = memref.view %view_210[%c8][] : memref<24xi8> to memref<f64>
    %alloca_212 = memref.alloca() : memref<f64>
    %215 = memref.load %view_211[] : memref<f64>
    memref.store %215, %alloca_212[] : memref<f64>
    %216 = memref.load %alloca_209[] : memref<f64>
    %217 = memref.load %alloca_212[] : memref<f64>
    %218 = arith.addf %216, %217 : f64
    %219 = arith.muli %c2, %c24 : index
    %view_213 = memref.view %alloca_0[%219][] : memref<144xi8> to memref<24xi8>
    %view_214 = memref.view %view_213[%c8][] : memref<24xi8> to memref<f64>
    memref.store %218, %view_214[] : memref<f64>
    %220 = arith.muli %c2, %c24 : index
    %view_215 = memref.view %alloca_0[%220][] : memref<144xi8> to memref<24xi8>
    %view_216 = memref.view %view_215[%c16][] : memref<24xi8> to memref<f64>
    %alloca_217 = memref.alloca() : memref<f64>
    %221 = memref.load %view_216[] : memref<f64>
    memref.store %221, %alloca_217[] : memref<f64>
    %222 = arith.muli %c5, %c24 : index
    %view_218 = memref.view %arg0[%222][] : memref<192xi8> to memref<24xi8>
    %view_219 = memref.view %view_218[%c16][] : memref<24xi8> to memref<f64>
    %alloca_220 = memref.alloca() : memref<f64>
    %223 = memref.load %view_219[] : memref<f64>
    memref.store %223, %alloca_220[] : memref<f64>
    %224 = memref.load %alloca_217[] : memref<f64>
    %225 = memref.load %alloca_220[] : memref<f64>
    %226 = arith.addf %224, %225 : f64
    %227 = arith.muli %c2, %c24 : index
    %view_221 = memref.view %alloca_0[%227][] : memref<144xi8> to memref<24xi8>
    %view_222 = memref.view %view_221[%c16][] : memref<24xi8> to memref<f64>
    memref.store %226, %view_222[] : memref<f64>
    %228 = arith.muli %c2, %c24 : index
    %view_223 = memref.view %alloca_0[%228][] : memref<144xi8> to memref<24xi8>
    %view_224 = memref.view %view_223[%c0][] : memref<24xi8> to memref<f64>
    %alloca_225 = memref.alloca() : memref<f64>
    %229 = memref.load %view_224[] : memref<f64>
    memref.store %229, %alloca_225[] : memref<f64>
    %230 = arith.muli %c4, %c24 : index
    %view_226 = memref.view %arg0[%230][] : memref<192xi8> to memref<24xi8>
    %view_227 = memref.view %view_226[%c0][] : memref<24xi8> to memref<f64>
    %alloca_228 = memref.alloca() : memref<f64>
    %231 = memref.load %view_227[] : memref<f64>
    memref.store %231, %alloca_228[] : memref<f64>
    %232 = memref.load %alloca_225[] : memref<f64>
    %233 = memref.load %alloca_228[] : memref<f64>
    %234 = arith.addf %232, %233 : f64
    %235 = arith.muli %c2, %c24 : index
    %view_229 = memref.view %alloca_0[%235][] : memref<144xi8> to memref<24xi8>
    %view_230 = memref.view %view_229[%c0][] : memref<24xi8> to memref<f64>
    memref.store %234, %view_230[] : memref<f64>
    %236 = arith.muli %c2, %c24 : index
    %view_231 = memref.view %alloca_0[%236][] : memref<144xi8> to memref<24xi8>
    %view_232 = memref.view %view_231[%c8][] : memref<24xi8> to memref<f64>
    %alloca_233 = memref.alloca() : memref<f64>
    %237 = memref.load %view_232[] : memref<f64>
    memref.store %237, %alloca_233[] : memref<f64>
    %238 = arith.muli %c4, %c24 : index
    %view_234 = memref.view %arg0[%238][] : memref<192xi8> to memref<24xi8>
    %view_235 = memref.view %view_234[%c8][] : memref<24xi8> to memref<f64>
    %alloca_236 = memref.alloca() : memref<f64>
    %239 = memref.load %view_235[] : memref<f64>
    memref.store %239, %alloca_236[] : memref<f64>
    %240 = memref.load %alloca_233[] : memref<f64>
    %241 = memref.load %alloca_236[] : memref<f64>
    %242 = arith.addf %240, %241 : f64
    %243 = arith.muli %c2, %c24 : index
    %view_237 = memref.view %alloca_0[%243][] : memref<144xi8> to memref<24xi8>
    %view_238 = memref.view %view_237[%c8][] : memref<24xi8> to memref<f64>
    memref.store %242, %view_238[] : memref<f64>
    %244 = arith.muli %c2, %c24 : index
    %view_239 = memref.view %alloca_0[%244][] : memref<144xi8> to memref<24xi8>
    %view_240 = memref.view %view_239[%c16][] : memref<24xi8> to memref<f64>
    %alloca_241 = memref.alloca() : memref<f64>
    %245 = memref.load %view_240[] : memref<f64>
    memref.store %245, %alloca_241[] : memref<f64>
    %246 = arith.muli %c4, %c24 : index
    %view_242 = memref.view %arg0[%246][] : memref<192xi8> to memref<24xi8>
    %view_243 = memref.view %view_242[%c16][] : memref<24xi8> to memref<f64>
    %alloca_244 = memref.alloca() : memref<f64>
    %247 = memref.load %view_243[] : memref<f64>
    memref.store %247, %alloca_244[] : memref<f64>
    %248 = memref.load %alloca_241[] : memref<f64>
    %249 = memref.load %alloca_244[] : memref<f64>
    %250 = arith.addf %248, %249 : f64
    %251 = arith.muli %c2, %c24 : index
    %view_245 = memref.view %alloca_0[%251][] : memref<144xi8> to memref<24xi8>
    %view_246 = memref.view %view_245[%c16][] : memref<24xi8> to memref<f64>
    memref.store %250, %view_246[] : memref<f64>
    %252 = arith.muli %c2, %c24 : index
    %view_247 = memref.view %alloca_0[%252][] : memref<144xi8> to memref<24xi8>
    %view_248 = memref.view %view_247[%c0][] : memref<24xi8> to memref<f64>
    %alloca_249 = memref.alloca() : memref<f64>
    %253 = memref.load %view_248[] : memref<f64>
    memref.store %253, %alloca_249[] : memref<f64>
    %254 = memref.load %alloca_1[] : memref<f64>
    %255 = memref.load %alloca_249[] : memref<f64>
    %256 = arith.mulf %255, %254 : f64
    %257 = arith.muli %c2, %c24 : index
    %view_250 = memref.view %alloca_0[%257][] : memref<144xi8> to memref<24xi8>
    %view_251 = memref.view %view_250[%c0][] : memref<24xi8> to memref<f64>
    memref.store %256, %view_251[] : memref<f64>
    %258 = arith.muli %c2, %c24 : index
    %view_252 = memref.view %alloca_0[%258][] : memref<144xi8> to memref<24xi8>
    %view_253 = memref.view %view_252[%c8][] : memref<24xi8> to memref<f64>
    %alloca_254 = memref.alloca() : memref<f64>
    %259 = memref.load %view_253[] : memref<f64>
    memref.store %259, %alloca_254[] : memref<f64>
    %260 = memref.load %alloca_1[] : memref<f64>
    %261 = memref.load %alloca_254[] : memref<f64>
    %262 = arith.mulf %261, %260 : f64
    %263 = arith.muli %c2, %c24 : index
    %view_255 = memref.view %alloca_0[%263][] : memref<144xi8> to memref<24xi8>
    %view_256 = memref.view %view_255[%c8][] : memref<24xi8> to memref<f64>
    memref.store %262, %view_256[] : memref<f64>
    %264 = arith.muli %c2, %c24 : index
    %view_257 = memref.view %alloca_0[%264][] : memref<144xi8> to memref<24xi8>
    %view_258 = memref.view %view_257[%c16][] : memref<24xi8> to memref<f64>
    %alloca_259 = memref.alloca() : memref<f64>
    %265 = memref.load %view_258[] : memref<f64>
    memref.store %265, %alloca_259[] : memref<f64>
    %266 = memref.load %alloca_1[] : memref<f64>
    %267 = memref.load %alloca_259[] : memref<f64>
    %268 = arith.mulf %267, %266 : f64
    %269 = arith.muli %c2, %c24 : index
    %view_260 = memref.view %alloca_0[%269][] : memref<144xi8> to memref<24xi8>
    %view_261 = memref.view %view_260[%c16][] : memref<24xi8> to memref<f64>
    memref.store %268, %view_261[] : memref<f64>
    %270 = arith.muli %c4, %c24 : index
    %view_262 = memref.view %arg0[%270][] : memref<192xi8> to memref<24xi8>
    %view_263 = memref.view %view_262[%c0][] : memref<24xi8> to memref<f64>
    %alloca_264 = memref.alloca() : memref<f64>
    %271 = memref.load %view_263[] : memref<f64>
    memref.store %271, %alloca_264[] : memref<f64>
    %272 = arith.muli %c5, %c24 : index
    %view_265 = memref.view %arg0[%272][] : memref<192xi8> to memref<24xi8>
    %view_266 = memref.view %view_265[%c0][] : memref<24xi8> to memref<f64>
    %alloca_267 = memref.alloca() : memref<f64>
    %273 = memref.load %view_266[] : memref<f64>
    memref.store %273, %alloca_267[] : memref<f64>
    %274 = memref.load %alloca_264[] : memref<f64>
    %275 = memref.load %alloca_267[] : memref<f64>
    %276 = arith.addf %274, %275 : f64
    %277 = arith.muli %c3, %c24 : index
    %view_268 = memref.view %alloca_0[%277][] : memref<144xi8> to memref<24xi8>
    %view_269 = memref.view %view_268[%c0][] : memref<24xi8> to memref<f64>
    memref.store %276, %view_269[] : memref<f64>
    %278 = arith.muli %c4, %c24 : index
    %view_270 = memref.view %arg0[%278][] : memref<192xi8> to memref<24xi8>
    %view_271 = memref.view %view_270[%c8][] : memref<24xi8> to memref<f64>
    %alloca_272 = memref.alloca() : memref<f64>
    %279 = memref.load %view_271[] : memref<f64>
    memref.store %279, %alloca_272[] : memref<f64>
    %280 = arith.muli %c5, %c24 : index
    %view_273 = memref.view %arg0[%280][] : memref<192xi8> to memref<24xi8>
    %view_274 = memref.view %view_273[%c8][] : memref<24xi8> to memref<f64>
    %alloca_275 = memref.alloca() : memref<f64>
    %281 = memref.load %view_274[] : memref<f64>
    memref.store %281, %alloca_275[] : memref<f64>
    %282 = memref.load %alloca_272[] : memref<f64>
    %283 = memref.load %alloca_275[] : memref<f64>
    %284 = arith.addf %282, %283 : f64
    %285 = arith.muli %c3, %c24 : index
    %view_276 = memref.view %alloca_0[%285][] : memref<144xi8> to memref<24xi8>
    %view_277 = memref.view %view_276[%c8][] : memref<24xi8> to memref<f64>
    memref.store %284, %view_277[] : memref<f64>
    %286 = arith.muli %c4, %c24 : index
    %view_278 = memref.view %arg0[%286][] : memref<192xi8> to memref<24xi8>
    %view_279 = memref.view %view_278[%c16][] : memref<24xi8> to memref<f64>
    %alloca_280 = memref.alloca() : memref<f64>
    %287 = memref.load %view_279[] : memref<f64>
    memref.store %287, %alloca_280[] : memref<f64>
    %288 = arith.muli %c5, %c24 : index
    %view_281 = memref.view %arg0[%288][] : memref<192xi8> to memref<24xi8>
    %view_282 = memref.view %view_281[%c16][] : memref<24xi8> to memref<f64>
    %alloca_283 = memref.alloca() : memref<f64>
    %289 = memref.load %view_282[] : memref<f64>
    memref.store %289, %alloca_283[] : memref<f64>
    %290 = memref.load %alloca_280[] : memref<f64>
    %291 = memref.load %alloca_283[] : memref<f64>
    %292 = arith.addf %290, %291 : f64
    %293 = arith.muli %c3, %c24 : index
    %view_284 = memref.view %alloca_0[%293][] : memref<144xi8> to memref<24xi8>
    %view_285 = memref.view %view_284[%c16][] : memref<24xi8> to memref<f64>
    memref.store %292, %view_285[] : memref<f64>
    %294 = arith.muli %c3, %c24 : index
    %view_286 = memref.view %alloca_0[%294][] : memref<144xi8> to memref<24xi8>
    %view_287 = memref.view %view_286[%c0][] : memref<24xi8> to memref<f64>
    %alloca_288 = memref.alloca() : memref<f64>
    %295 = memref.load %view_287[] : memref<f64>
    memref.store %295, %alloca_288[] : memref<f64>
    %296 = arith.muli %c6, %c24 : index
    %view_289 = memref.view %arg0[%296][] : memref<192xi8> to memref<24xi8>
    %view_290 = memref.view %view_289[%c0][] : memref<24xi8> to memref<f64>
    %alloca_291 = memref.alloca() : memref<f64>
    %297 = memref.load %view_290[] : memref<f64>
    memref.store %297, %alloca_291[] : memref<f64>
    %298 = memref.load %alloca_288[] : memref<f64>
    %299 = memref.load %alloca_291[] : memref<f64>
    %300 = arith.addf %298, %299 : f64
    %301 = arith.muli %c3, %c24 : index
    %view_292 = memref.view %alloca_0[%301][] : memref<144xi8> to memref<24xi8>
    %view_293 = memref.view %view_292[%c0][] : memref<24xi8> to memref<f64>
    memref.store %300, %view_293[] : memref<f64>
    %302 = arith.muli %c3, %c24 : index
    %view_294 = memref.view %alloca_0[%302][] : memref<144xi8> to memref<24xi8>
    %view_295 = memref.view %view_294[%c8][] : memref<24xi8> to memref<f64>
    %alloca_296 = memref.alloca() : memref<f64>
    %303 = memref.load %view_295[] : memref<f64>
    memref.store %303, %alloca_296[] : memref<f64>
    %304 = arith.muli %c6, %c24 : index
    %view_297 = memref.view %arg0[%304][] : memref<192xi8> to memref<24xi8>
    %view_298 = memref.view %view_297[%c8][] : memref<24xi8> to memref<f64>
    %alloca_299 = memref.alloca() : memref<f64>
    %305 = memref.load %view_298[] : memref<f64>
    memref.store %305, %alloca_299[] : memref<f64>
    %306 = memref.load %alloca_296[] : memref<f64>
    %307 = memref.load %alloca_299[] : memref<f64>
    %308 = arith.addf %306, %307 : f64
    %309 = arith.muli %c3, %c24 : index
    %view_300 = memref.view %alloca_0[%309][] : memref<144xi8> to memref<24xi8>
    %view_301 = memref.view %view_300[%c8][] : memref<24xi8> to memref<f64>
    memref.store %308, %view_301[] : memref<f64>
    %310 = arith.muli %c3, %c24 : index
    %view_302 = memref.view %alloca_0[%310][] : memref<144xi8> to memref<24xi8>
    %view_303 = memref.view %view_302[%c16][] : memref<24xi8> to memref<f64>
    %alloca_304 = memref.alloca() : memref<f64>
    %311 = memref.load %view_303[] : memref<f64>
    memref.store %311, %alloca_304[] : memref<f64>
    %312 = arith.muli %c6, %c24 : index
    %view_305 = memref.view %arg0[%312][] : memref<192xi8> to memref<24xi8>
    %view_306 = memref.view %view_305[%c16][] : memref<24xi8> to memref<f64>
    %alloca_307 = memref.alloca() : memref<f64>
    %313 = memref.load %view_306[] : memref<f64>
    memref.store %313, %alloca_307[] : memref<f64>
    %314 = memref.load %alloca_304[] : memref<f64>
    %315 = memref.load %alloca_307[] : memref<f64>
    %316 = arith.addf %314, %315 : f64
    %317 = arith.muli %c3, %c24 : index
    %view_308 = memref.view %alloca_0[%317][] : memref<144xi8> to memref<24xi8>
    %view_309 = memref.view %view_308[%c16][] : memref<24xi8> to memref<f64>
    memref.store %316, %view_309[] : memref<f64>
    %318 = arith.muli %c3, %c24 : index
    %view_310 = memref.view %alloca_0[%318][] : memref<144xi8> to memref<24xi8>
    %view_311 = memref.view %view_310[%c0][] : memref<24xi8> to memref<f64>
    %alloca_312 = memref.alloca() : memref<f64>
    %319 = memref.load %view_311[] : memref<f64>
    memref.store %319, %alloca_312[] : memref<f64>
    %320 = arith.muli %c7, %c24 : index
    %view_313 = memref.view %arg0[%320][] : memref<192xi8> to memref<24xi8>
    %view_314 = memref.view %view_313[%c0][] : memref<24xi8> to memref<f64>
    %alloca_315 = memref.alloca() : memref<f64>
    %321 = memref.load %view_314[] : memref<f64>
    memref.store %321, %alloca_315[] : memref<f64>
    %322 = memref.load %alloca_312[] : memref<f64>
    %323 = memref.load %alloca_315[] : memref<f64>
    %324 = arith.addf %322, %323 : f64
    %325 = arith.muli %c3, %c24 : index
    %view_316 = memref.view %alloca_0[%325][] : memref<144xi8> to memref<24xi8>
    %view_317 = memref.view %view_316[%c0][] : memref<24xi8> to memref<f64>
    memref.store %324, %view_317[] : memref<f64>
    %326 = arith.muli %c3, %c24 : index
    %view_318 = memref.view %alloca_0[%326][] : memref<144xi8> to memref<24xi8>
    %view_319 = memref.view %view_318[%c8][] : memref<24xi8> to memref<f64>
    %alloca_320 = memref.alloca() : memref<f64>
    %327 = memref.load %view_319[] : memref<f64>
    memref.store %327, %alloca_320[] : memref<f64>
    %328 = arith.muli %c7, %c24 : index
    %view_321 = memref.view %arg0[%328][] : memref<192xi8> to memref<24xi8>
    %view_322 = memref.view %view_321[%c8][] : memref<24xi8> to memref<f64>
    %alloca_323 = memref.alloca() : memref<f64>
    %329 = memref.load %view_322[] : memref<f64>
    memref.store %329, %alloca_323[] : memref<f64>
    %330 = memref.load %alloca_320[] : memref<f64>
    %331 = memref.load %alloca_323[] : memref<f64>
    %332 = arith.addf %330, %331 : f64
    %333 = arith.muli %c3, %c24 : index
    %view_324 = memref.view %alloca_0[%333][] : memref<144xi8> to memref<24xi8>
    %view_325 = memref.view %view_324[%c8][] : memref<24xi8> to memref<f64>
    memref.store %332, %view_325[] : memref<f64>
    %334 = arith.muli %c3, %c24 : index
    %view_326 = memref.view %alloca_0[%334][] : memref<144xi8> to memref<24xi8>
    %view_327 = memref.view %view_326[%c16][] : memref<24xi8> to memref<f64>
    %alloca_328 = memref.alloca() : memref<f64>
    %335 = memref.load %view_327[] : memref<f64>
    memref.store %335, %alloca_328[] : memref<f64>
    %336 = arith.muli %c7, %c24 : index
    %view_329 = memref.view %arg0[%336][] : memref<192xi8> to memref<24xi8>
    %view_330 = memref.view %view_329[%c16][] : memref<24xi8> to memref<f64>
    %alloca_331 = memref.alloca() : memref<f64>
    %337 = memref.load %view_330[] : memref<f64>
    memref.store %337, %alloca_331[] : memref<f64>
    %338 = memref.load %alloca_328[] : memref<f64>
    %339 = memref.load %alloca_331[] : memref<f64>
    %340 = arith.addf %338, %339 : f64
    %341 = arith.muli %c3, %c24 : index
    %view_332 = memref.view %alloca_0[%341][] : memref<144xi8> to memref<24xi8>
    %view_333 = memref.view %view_332[%c16][] : memref<24xi8> to memref<f64>
    memref.store %340, %view_333[] : memref<f64>
    %342 = arith.muli %c3, %c24 : index
    %view_334 = memref.view %alloca_0[%342][] : memref<144xi8> to memref<24xi8>
    %view_335 = memref.view %view_334[%c0][] : memref<24xi8> to memref<f64>
    %alloca_336 = memref.alloca() : memref<f64>
    %343 = memref.load %view_335[] : memref<f64>
    memref.store %343, %alloca_336[] : memref<f64>
    %344 = memref.load %alloca_1[] : memref<f64>
    %345 = memref.load %alloca_336[] : memref<f64>
    %346 = arith.mulf %345, %344 : f64
    %347 = arith.muli %c3, %c24 : index
    %view_337 = memref.view %alloca_0[%347][] : memref<144xi8> to memref<24xi8>
    %view_338 = memref.view %view_337[%c0][] : memref<24xi8> to memref<f64>
    memref.store %346, %view_338[] : memref<f64>
    %348 = arith.muli %c3, %c24 : index
    %view_339 = memref.view %alloca_0[%348][] : memref<144xi8> to memref<24xi8>
    %view_340 = memref.view %view_339[%c8][] : memref<24xi8> to memref<f64>
    %alloca_341 = memref.alloca() : memref<f64>
    %349 = memref.load %view_340[] : memref<f64>
    memref.store %349, %alloca_341[] : memref<f64>
    %350 = memref.load %alloca_1[] : memref<f64>
    %351 = memref.load %alloca_341[] : memref<f64>
    %352 = arith.mulf %351, %350 : f64
    %353 = arith.muli %c3, %c24 : index
    %view_342 = memref.view %alloca_0[%353][] : memref<144xi8> to memref<24xi8>
    %view_343 = memref.view %view_342[%c8][] : memref<24xi8> to memref<f64>
    memref.store %352, %view_343[] : memref<f64>
    %354 = arith.muli %c3, %c24 : index
    %view_344 = memref.view %alloca_0[%354][] : memref<144xi8> to memref<24xi8>
    %view_345 = memref.view %view_344[%c16][] : memref<24xi8> to memref<f64>
    %alloca_346 = memref.alloca() : memref<f64>
    %355 = memref.load %view_345[] : memref<f64>
    memref.store %355, %alloca_346[] : memref<f64>
    %356 = memref.load %alloca_1[] : memref<f64>
    %357 = memref.load %alloca_346[] : memref<f64>
    %358 = arith.mulf %357, %356 : f64
    %359 = arith.muli %c3, %c24 : index
    %view_347 = memref.view %alloca_0[%359][] : memref<144xi8> to memref<24xi8>
    %view_348 = memref.view %view_347[%c16][] : memref<24xi8> to memref<f64>
    memref.store %358, %view_348[] : memref<f64>
    %360 = arith.muli %c1, %c24 : index
    %view_349 = memref.view %arg0[%360][] : memref<192xi8> to memref<24xi8>
    %view_350 = memref.view %view_349[%c0][] : memref<24xi8> to memref<f64>
    %alloca_351 = memref.alloca() : memref<f64>
    %361 = memref.load %view_350[] : memref<f64>
    memref.store %361, %alloca_351[] : memref<f64>
    %362 = arith.muli %c2, %c24 : index
    %view_352 = memref.view %arg0[%362][] : memref<192xi8> to memref<24xi8>
    %view_353 = memref.view %view_352[%c0][] : memref<24xi8> to memref<f64>
    %alloca_354 = memref.alloca() : memref<f64>
    %363 = memref.load %view_353[] : memref<f64>
    memref.store %363, %alloca_354[] : memref<f64>
    %364 = memref.load %alloca_351[] : memref<f64>
    %365 = memref.load %alloca_354[] : memref<f64>
    %366 = arith.addf %364, %365 : f64
    %367 = arith.muli %c4, %c24 : index
    %view_355 = memref.view %alloca_0[%367][] : memref<144xi8> to memref<24xi8>
    %view_356 = memref.view %view_355[%c0][] : memref<24xi8> to memref<f64>
    memref.store %366, %view_356[] : memref<f64>
    %368 = arith.muli %c1, %c24 : index
    %view_357 = memref.view %arg0[%368][] : memref<192xi8> to memref<24xi8>
    %view_358 = memref.view %view_357[%c8][] : memref<24xi8> to memref<f64>
    %alloca_359 = memref.alloca() : memref<f64>
    %369 = memref.load %view_358[] : memref<f64>
    memref.store %369, %alloca_359[] : memref<f64>
    %370 = arith.muli %c2, %c24 : index
    %view_360 = memref.view %arg0[%370][] : memref<192xi8> to memref<24xi8>
    %view_361 = memref.view %view_360[%c8][] : memref<24xi8> to memref<f64>
    %alloca_362 = memref.alloca() : memref<f64>
    %371 = memref.load %view_361[] : memref<f64>
    memref.store %371, %alloca_362[] : memref<f64>
    %372 = memref.load %alloca_359[] : memref<f64>
    %373 = memref.load %alloca_362[] : memref<f64>
    %374 = arith.addf %372, %373 : f64
    %375 = arith.muli %c4, %c24 : index
    %view_363 = memref.view %alloca_0[%375][] : memref<144xi8> to memref<24xi8>
    %view_364 = memref.view %view_363[%c8][] : memref<24xi8> to memref<f64>
    memref.store %374, %view_364[] : memref<f64>
    %376 = arith.muli %c1, %c24 : index
    %view_365 = memref.view %arg0[%376][] : memref<192xi8> to memref<24xi8>
    %view_366 = memref.view %view_365[%c16][] : memref<24xi8> to memref<f64>
    %alloca_367 = memref.alloca() : memref<f64>
    %377 = memref.load %view_366[] : memref<f64>
    memref.store %377, %alloca_367[] : memref<f64>
    %378 = arith.muli %c2, %c24 : index
    %view_368 = memref.view %arg0[%378][] : memref<192xi8> to memref<24xi8>
    %view_369 = memref.view %view_368[%c16][] : memref<24xi8> to memref<f64>
    %alloca_370 = memref.alloca() : memref<f64>
    %379 = memref.load %view_369[] : memref<f64>
    memref.store %379, %alloca_370[] : memref<f64>
    %380 = memref.load %alloca_367[] : memref<f64>
    %381 = memref.load %alloca_370[] : memref<f64>
    %382 = arith.addf %380, %381 : f64
    %383 = arith.muli %c4, %c24 : index
    %view_371 = memref.view %alloca_0[%383][] : memref<144xi8> to memref<24xi8>
    %view_372 = memref.view %view_371[%c16][] : memref<24xi8> to memref<f64>
    memref.store %382, %view_372[] : memref<f64>
    %384 = arith.muli %c4, %c24 : index
    %view_373 = memref.view %alloca_0[%384][] : memref<144xi8> to memref<24xi8>
    %view_374 = memref.view %view_373[%c0][] : memref<24xi8> to memref<f64>
    %alloca_375 = memref.alloca() : memref<f64>
    %385 = memref.load %view_374[] : memref<f64>
    memref.store %385, %alloca_375[] : memref<f64>
    %386 = arith.muli %c6, %c24 : index
    %view_376 = memref.view %arg0[%386][] : memref<192xi8> to memref<24xi8>
    %view_377 = memref.view %view_376[%c0][] : memref<24xi8> to memref<f64>
    %alloca_378 = memref.alloca() : memref<f64>
    %387 = memref.load %view_377[] : memref<f64>
    memref.store %387, %alloca_378[] : memref<f64>
    %388 = memref.load %alloca_375[] : memref<f64>
    %389 = memref.load %alloca_378[] : memref<f64>
    %390 = arith.addf %388, %389 : f64
    %391 = arith.muli %c4, %c24 : index
    %view_379 = memref.view %alloca_0[%391][] : memref<144xi8> to memref<24xi8>
    %view_380 = memref.view %view_379[%c0][] : memref<24xi8> to memref<f64>
    memref.store %390, %view_380[] : memref<f64>
    %392 = arith.muli %c4, %c24 : index
    %view_381 = memref.view %alloca_0[%392][] : memref<144xi8> to memref<24xi8>
    %view_382 = memref.view %view_381[%c8][] : memref<24xi8> to memref<f64>
    %alloca_383 = memref.alloca() : memref<f64>
    %393 = memref.load %view_382[] : memref<f64>
    memref.store %393, %alloca_383[] : memref<f64>
    %394 = arith.muli %c6, %c24 : index
    %view_384 = memref.view %arg0[%394][] : memref<192xi8> to memref<24xi8>
    %view_385 = memref.view %view_384[%c8][] : memref<24xi8> to memref<f64>
    %alloca_386 = memref.alloca() : memref<f64>
    %395 = memref.load %view_385[] : memref<f64>
    memref.store %395, %alloca_386[] : memref<f64>
    %396 = memref.load %alloca_383[] : memref<f64>
    %397 = memref.load %alloca_386[] : memref<f64>
    %398 = arith.addf %396, %397 : f64
    %399 = arith.muli %c4, %c24 : index
    %view_387 = memref.view %alloca_0[%399][] : memref<144xi8> to memref<24xi8>
    %view_388 = memref.view %view_387[%c8][] : memref<24xi8> to memref<f64>
    memref.store %398, %view_388[] : memref<f64>
    %400 = arith.muli %c4, %c24 : index
    %view_389 = memref.view %alloca_0[%400][] : memref<144xi8> to memref<24xi8>
    %view_390 = memref.view %view_389[%c16][] : memref<24xi8> to memref<f64>
    %alloca_391 = memref.alloca() : memref<f64>
    %401 = memref.load %view_390[] : memref<f64>
    memref.store %401, %alloca_391[] : memref<f64>
    %402 = arith.muli %c6, %c24 : index
    %view_392 = memref.view %arg0[%402][] : memref<192xi8> to memref<24xi8>
    %view_393 = memref.view %view_392[%c16][] : memref<24xi8> to memref<f64>
    %alloca_394 = memref.alloca() : memref<f64>
    %403 = memref.load %view_393[] : memref<f64>
    memref.store %403, %alloca_394[] : memref<f64>
    %404 = memref.load %alloca_391[] : memref<f64>
    %405 = memref.load %alloca_394[] : memref<f64>
    %406 = arith.addf %404, %405 : f64
    %407 = arith.muli %c4, %c24 : index
    %view_395 = memref.view %alloca_0[%407][] : memref<144xi8> to memref<24xi8>
    %view_396 = memref.view %view_395[%c16][] : memref<24xi8> to memref<f64>
    memref.store %406, %view_396[] : memref<f64>
    %408 = arith.muli %c4, %c24 : index
    %view_397 = memref.view %alloca_0[%408][] : memref<144xi8> to memref<24xi8>
    %view_398 = memref.view %view_397[%c0][] : memref<24xi8> to memref<f64>
    %alloca_399 = memref.alloca() : memref<f64>
    %409 = memref.load %view_398[] : memref<f64>
    memref.store %409, %alloca_399[] : memref<f64>
    %410 = arith.muli %c5, %c24 : index
    %view_400 = memref.view %arg0[%410][] : memref<192xi8> to memref<24xi8>
    %view_401 = memref.view %view_400[%c0][] : memref<24xi8> to memref<f64>
    %alloca_402 = memref.alloca() : memref<f64>
    %411 = memref.load %view_401[] : memref<f64>
    memref.store %411, %alloca_402[] : memref<f64>
    %412 = memref.load %alloca_399[] : memref<f64>
    %413 = memref.load %alloca_402[] : memref<f64>
    %414 = arith.addf %412, %413 : f64
    %415 = arith.muli %c4, %c24 : index
    %view_403 = memref.view %alloca_0[%415][] : memref<144xi8> to memref<24xi8>
    %view_404 = memref.view %view_403[%c0][] : memref<24xi8> to memref<f64>
    memref.store %414, %view_404[] : memref<f64>
    %416 = arith.muli %c4, %c24 : index
    %view_405 = memref.view %alloca_0[%416][] : memref<144xi8> to memref<24xi8>
    %view_406 = memref.view %view_405[%c8][] : memref<24xi8> to memref<f64>
    %alloca_407 = memref.alloca() : memref<f64>
    %417 = memref.load %view_406[] : memref<f64>
    memref.store %417, %alloca_407[] : memref<f64>
    %418 = arith.muli %c5, %c24 : index
    %view_408 = memref.view %arg0[%418][] : memref<192xi8> to memref<24xi8>
    %view_409 = memref.view %view_408[%c8][] : memref<24xi8> to memref<f64>
    %alloca_410 = memref.alloca() : memref<f64>
    %419 = memref.load %view_409[] : memref<f64>
    memref.store %419, %alloca_410[] : memref<f64>
    %420 = memref.load %alloca_407[] : memref<f64>
    %421 = memref.load %alloca_410[] : memref<f64>
    %422 = arith.addf %420, %421 : f64
    %423 = arith.muli %c4, %c24 : index
    %view_411 = memref.view %alloca_0[%423][] : memref<144xi8> to memref<24xi8>
    %view_412 = memref.view %view_411[%c8][] : memref<24xi8> to memref<f64>
    memref.store %422, %view_412[] : memref<f64>
    %424 = arith.muli %c4, %c24 : index
    %view_413 = memref.view %alloca_0[%424][] : memref<144xi8> to memref<24xi8>
    %view_414 = memref.view %view_413[%c16][] : memref<24xi8> to memref<f64>
    %alloca_415 = memref.alloca() : memref<f64>
    %425 = memref.load %view_414[] : memref<f64>
    memref.store %425, %alloca_415[] : memref<f64>
    %426 = arith.muli %c5, %c24 : index
    %view_416 = memref.view %arg0[%426][] : memref<192xi8> to memref<24xi8>
    %view_417 = memref.view %view_416[%c16][] : memref<24xi8> to memref<f64>
    %alloca_418 = memref.alloca() : memref<f64>
    %427 = memref.load %view_417[] : memref<f64>
    memref.store %427, %alloca_418[] : memref<f64>
    %428 = memref.load %alloca_415[] : memref<f64>
    %429 = memref.load %alloca_418[] : memref<f64>
    %430 = arith.addf %428, %429 : f64
    %431 = arith.muli %c4, %c24 : index
    %view_419 = memref.view %alloca_0[%431][] : memref<144xi8> to memref<24xi8>
    %view_420 = memref.view %view_419[%c16][] : memref<24xi8> to memref<f64>
    memref.store %430, %view_420[] : memref<f64>
    %432 = arith.muli %c4, %c24 : index
    %view_421 = memref.view %alloca_0[%432][] : memref<144xi8> to memref<24xi8>
    %view_422 = memref.view %view_421[%c0][] : memref<24xi8> to memref<f64>
    %alloca_423 = memref.alloca() : memref<f64>
    %433 = memref.load %view_422[] : memref<f64>
    memref.store %433, %alloca_423[] : memref<f64>
    %434 = memref.load %alloca_1[] : memref<f64>
    %435 = memref.load %alloca_423[] : memref<f64>
    %436 = arith.mulf %435, %434 : f64
    %437 = arith.muli %c4, %c24 : index
    %view_424 = memref.view %alloca_0[%437][] : memref<144xi8> to memref<24xi8>
    %view_425 = memref.view %view_424[%c0][] : memref<24xi8> to memref<f64>
    memref.store %436, %view_425[] : memref<f64>
    %438 = arith.muli %c4, %c24 : index
    %view_426 = memref.view %alloca_0[%438][] : memref<144xi8> to memref<24xi8>
    %view_427 = memref.view %view_426[%c8][] : memref<24xi8> to memref<f64>
    %alloca_428 = memref.alloca() : memref<f64>
    %439 = memref.load %view_427[] : memref<f64>
    memref.store %439, %alloca_428[] : memref<f64>
    %440 = memref.load %alloca_1[] : memref<f64>
    %441 = memref.load %alloca_428[] : memref<f64>
    %442 = arith.mulf %441, %440 : f64
    %443 = arith.muli %c4, %c24 : index
    %view_429 = memref.view %alloca_0[%443][] : memref<144xi8> to memref<24xi8>
    %view_430 = memref.view %view_429[%c8][] : memref<24xi8> to memref<f64>
    memref.store %442, %view_430[] : memref<f64>
    %444 = arith.muli %c4, %c24 : index
    %view_431 = memref.view %alloca_0[%444][] : memref<144xi8> to memref<24xi8>
    %view_432 = memref.view %view_431[%c16][] : memref<24xi8> to memref<f64>
    %alloca_433 = memref.alloca() : memref<f64>
    %445 = memref.load %view_432[] : memref<f64>
    memref.store %445, %alloca_433[] : memref<f64>
    %446 = memref.load %alloca_1[] : memref<f64>
    %447 = memref.load %alloca_433[] : memref<f64>
    %448 = arith.mulf %447, %446 : f64
    %449 = arith.muli %c4, %c24 : index
    %view_434 = memref.view %alloca_0[%449][] : memref<144xi8> to memref<24xi8>
    %view_435 = memref.view %view_434[%c16][] : memref<24xi8> to memref<f64>
    memref.store %448, %view_435[] : memref<f64>
    %450 = arith.muli %c2, %c24 : index
    %view_436 = memref.view %arg0[%450][] : memref<192xi8> to memref<24xi8>
    %view_437 = memref.view %view_436[%c0][] : memref<24xi8> to memref<f64>
    %alloca_438 = memref.alloca() : memref<f64>
    %451 = memref.load %view_437[] : memref<f64>
    memref.store %451, %alloca_438[] : memref<f64>
    %452 = arith.muli %c3, %c24 : index
    %view_439 = memref.view %arg0[%452][] : memref<192xi8> to memref<24xi8>
    %view_440 = memref.view %view_439[%c0][] : memref<24xi8> to memref<f64>
    %alloca_441 = memref.alloca() : memref<f64>
    %453 = memref.load %view_440[] : memref<f64>
    memref.store %453, %alloca_441[] : memref<f64>
    %454 = memref.load %alloca_438[] : memref<f64>
    %455 = memref.load %alloca_441[] : memref<f64>
    %456 = arith.addf %454, %455 : f64
    %457 = arith.muli %c5, %c24 : index
    %view_442 = memref.view %alloca_0[%457][] : memref<144xi8> to memref<24xi8>
    %view_443 = memref.view %view_442[%c0][] : memref<24xi8> to memref<f64>
    memref.store %456, %view_443[] : memref<f64>
    %458 = arith.muli %c2, %c24 : index
    %view_444 = memref.view %arg0[%458][] : memref<192xi8> to memref<24xi8>
    %view_445 = memref.view %view_444[%c8][] : memref<24xi8> to memref<f64>
    %alloca_446 = memref.alloca() : memref<f64>
    %459 = memref.load %view_445[] : memref<f64>
    memref.store %459, %alloca_446[] : memref<f64>
    %460 = arith.muli %c3, %c24 : index
    %view_447 = memref.view %arg0[%460][] : memref<192xi8> to memref<24xi8>
    %view_448 = memref.view %view_447[%c8][] : memref<24xi8> to memref<f64>
    %alloca_449 = memref.alloca() : memref<f64>
    %461 = memref.load %view_448[] : memref<f64>
    memref.store %461, %alloca_449[] : memref<f64>
    %462 = memref.load %alloca_446[] : memref<f64>
    %463 = memref.load %alloca_449[] : memref<f64>
    %464 = arith.addf %462, %463 : f64
    %465 = arith.muli %c5, %c24 : index
    %view_450 = memref.view %alloca_0[%465][] : memref<144xi8> to memref<24xi8>
    %view_451 = memref.view %view_450[%c8][] : memref<24xi8> to memref<f64>
    memref.store %464, %view_451[] : memref<f64>
    %466 = arith.muli %c2, %c24 : index
    %view_452 = memref.view %arg0[%466][] : memref<192xi8> to memref<24xi8>
    %view_453 = memref.view %view_452[%c16][] : memref<24xi8> to memref<f64>
    %alloca_454 = memref.alloca() : memref<f64>
    %467 = memref.load %view_453[] : memref<f64>
    memref.store %467, %alloca_454[] : memref<f64>
    %468 = arith.muli %c3, %c24 : index
    %view_455 = memref.view %arg0[%468][] : memref<192xi8> to memref<24xi8>
    %view_456 = memref.view %view_455[%c16][] : memref<24xi8> to memref<f64>
    %alloca_457 = memref.alloca() : memref<f64>
    %469 = memref.load %view_456[] : memref<f64>
    memref.store %469, %alloca_457[] : memref<f64>
    %470 = memref.load %alloca_454[] : memref<f64>
    %471 = memref.load %alloca_457[] : memref<f64>
    %472 = arith.addf %470, %471 : f64
    %473 = arith.muli %c5, %c24 : index
    %view_458 = memref.view %alloca_0[%473][] : memref<144xi8> to memref<24xi8>
    %view_459 = memref.view %view_458[%c16][] : memref<24xi8> to memref<f64>
    memref.store %472, %view_459[] : memref<f64>
    %474 = arith.muli %c5, %c24 : index
    %view_460 = memref.view %alloca_0[%474][] : memref<144xi8> to memref<24xi8>
    %view_461 = memref.view %view_460[%c0][] : memref<24xi8> to memref<f64>
    %alloca_462 = memref.alloca() : memref<f64>
    %475 = memref.load %view_461[] : memref<f64>
    memref.store %475, %alloca_462[] : memref<f64>
    %476 = arith.muli %c7, %c24 : index
    %view_463 = memref.view %arg0[%476][] : memref<192xi8> to memref<24xi8>
    %view_464 = memref.view %view_463[%c0][] : memref<24xi8> to memref<f64>
    %alloca_465 = memref.alloca() : memref<f64>
    %477 = memref.load %view_464[] : memref<f64>
    memref.store %477, %alloca_465[] : memref<f64>
    %478 = memref.load %alloca_462[] : memref<f64>
    %479 = memref.load %alloca_465[] : memref<f64>
    %480 = arith.addf %478, %479 : f64
    %481 = arith.muli %c5, %c24 : index
    %view_466 = memref.view %alloca_0[%481][] : memref<144xi8> to memref<24xi8>
    %view_467 = memref.view %view_466[%c0][] : memref<24xi8> to memref<f64>
    memref.store %480, %view_467[] : memref<f64>
    %482 = arith.muli %c5, %c24 : index
    %view_468 = memref.view %alloca_0[%482][] : memref<144xi8> to memref<24xi8>
    %view_469 = memref.view %view_468[%c8][] : memref<24xi8> to memref<f64>
    %alloca_470 = memref.alloca() : memref<f64>
    %483 = memref.load %view_469[] : memref<f64>
    memref.store %483, %alloca_470[] : memref<f64>
    %484 = arith.muli %c7, %c24 : index
    %view_471 = memref.view %arg0[%484][] : memref<192xi8> to memref<24xi8>
    %view_472 = memref.view %view_471[%c8][] : memref<24xi8> to memref<f64>
    %alloca_473 = memref.alloca() : memref<f64>
    %485 = memref.load %view_472[] : memref<f64>
    memref.store %485, %alloca_473[] : memref<f64>
    %486 = memref.load %alloca_470[] : memref<f64>
    %487 = memref.load %alloca_473[] : memref<f64>
    %488 = arith.addf %486, %487 : f64
    %489 = arith.muli %c5, %c24 : index
    %view_474 = memref.view %alloca_0[%489][] : memref<144xi8> to memref<24xi8>
    %view_475 = memref.view %view_474[%c8][] : memref<24xi8> to memref<f64>
    memref.store %488, %view_475[] : memref<f64>
    %490 = arith.muli %c5, %c24 : index
    %view_476 = memref.view %alloca_0[%490][] : memref<144xi8> to memref<24xi8>
    %view_477 = memref.view %view_476[%c16][] : memref<24xi8> to memref<f64>
    %alloca_478 = memref.alloca() : memref<f64>
    %491 = memref.load %view_477[] : memref<f64>
    memref.store %491, %alloca_478[] : memref<f64>
    %492 = arith.muli %c7, %c24 : index
    %view_479 = memref.view %arg0[%492][] : memref<192xi8> to memref<24xi8>
    %view_480 = memref.view %view_479[%c16][] : memref<24xi8> to memref<f64>
    %alloca_481 = memref.alloca() : memref<f64>
    %493 = memref.load %view_480[] : memref<f64>
    memref.store %493, %alloca_481[] : memref<f64>
    %494 = memref.load %alloca_478[] : memref<f64>
    %495 = memref.load %alloca_481[] : memref<f64>
    %496 = arith.addf %494, %495 : f64
    %497 = arith.muli %c5, %c24 : index
    %view_482 = memref.view %alloca_0[%497][] : memref<144xi8> to memref<24xi8>
    %view_483 = memref.view %view_482[%c16][] : memref<24xi8> to memref<f64>
    memref.store %496, %view_483[] : memref<f64>
    %498 = arith.muli %c5, %c24 : index
    %view_484 = memref.view %alloca_0[%498][] : memref<144xi8> to memref<24xi8>
    %view_485 = memref.view %view_484[%c0][] : memref<24xi8> to memref<f64>
    %alloca_486 = memref.alloca() : memref<f64>
    %499 = memref.load %view_485[] : memref<f64>
    memref.store %499, %alloca_486[] : memref<f64>
    %500 = arith.muli %c6, %c24 : index
    %view_487 = memref.view %arg0[%500][] : memref<192xi8> to memref<24xi8>
    %view_488 = memref.view %view_487[%c0][] : memref<24xi8> to memref<f64>
    %alloca_489 = memref.alloca() : memref<f64>
    %501 = memref.load %view_488[] : memref<f64>
    memref.store %501, %alloca_489[] : memref<f64>
    %502 = memref.load %alloca_486[] : memref<f64>
    %503 = memref.load %alloca_489[] : memref<f64>
    %504 = arith.addf %502, %503 : f64
    %505 = arith.muli %c5, %c24 : index
    %view_490 = memref.view %alloca_0[%505][] : memref<144xi8> to memref<24xi8>
    %view_491 = memref.view %view_490[%c0][] : memref<24xi8> to memref<f64>
    memref.store %504, %view_491[] : memref<f64>
    %506 = arith.muli %c5, %c24 : index
    %view_492 = memref.view %alloca_0[%506][] : memref<144xi8> to memref<24xi8>
    %view_493 = memref.view %view_492[%c8][] : memref<24xi8> to memref<f64>
    %alloca_494 = memref.alloca() : memref<f64>
    %507 = memref.load %view_493[] : memref<f64>
    memref.store %507, %alloca_494[] : memref<f64>
    %508 = arith.muli %c6, %c24 : index
    %view_495 = memref.view %arg0[%508][] : memref<192xi8> to memref<24xi8>
    %view_496 = memref.view %view_495[%c8][] : memref<24xi8> to memref<f64>
    %alloca_497 = memref.alloca() : memref<f64>
    %509 = memref.load %view_496[] : memref<f64>
    memref.store %509, %alloca_497[] : memref<f64>
    %510 = memref.load %alloca_494[] : memref<f64>
    %511 = memref.load %alloca_497[] : memref<f64>
    %512 = arith.addf %510, %511 : f64
    %513 = arith.muli %c5, %c24 : index
    %view_498 = memref.view %alloca_0[%513][] : memref<144xi8> to memref<24xi8>
    %view_499 = memref.view %view_498[%c8][] : memref<24xi8> to memref<f64>
    memref.store %512, %view_499[] : memref<f64>
    %514 = arith.muli %c5, %c24 : index
    %view_500 = memref.view %alloca_0[%514][] : memref<144xi8> to memref<24xi8>
    %view_501 = memref.view %view_500[%c16][] : memref<24xi8> to memref<f64>
    %alloca_502 = memref.alloca() : memref<f64>
    %515 = memref.load %view_501[] : memref<f64>
    memref.store %515, %alloca_502[] : memref<f64>
    %516 = arith.muli %c6, %c24 : index
    %view_503 = memref.view %arg0[%516][] : memref<192xi8> to memref<24xi8>
    %view_504 = memref.view %view_503[%c16][] : memref<24xi8> to memref<f64>
    %alloca_505 = memref.alloca() : memref<f64>
    %517 = memref.load %view_504[] : memref<f64>
    memref.store %517, %alloca_505[] : memref<f64>
    %518 = memref.load %alloca_502[] : memref<f64>
    %519 = memref.load %alloca_505[] : memref<f64>
    %520 = arith.addf %518, %519 : f64
    %521 = arith.muli %c5, %c24 : index
    %view_506 = memref.view %alloca_0[%521][] : memref<144xi8> to memref<24xi8>
    %view_507 = memref.view %view_506[%c16][] : memref<24xi8> to memref<f64>
    memref.store %520, %view_507[] : memref<f64>
    %522 = arith.muli %c5, %c24 : index
    %view_508 = memref.view %alloca_0[%522][] : memref<144xi8> to memref<24xi8>
    %view_509 = memref.view %view_508[%c0][] : memref<24xi8> to memref<f64>
    %alloca_510 = memref.alloca() : memref<f64>
    %523 = memref.load %view_509[] : memref<f64>
    memref.store %523, %alloca_510[] : memref<f64>
    %524 = memref.load %alloca_1[] : memref<f64>
    %525 = memref.load %alloca_510[] : memref<f64>
    %526 = arith.mulf %525, %524 : f64
    %527 = arith.muli %c5, %c24 : index
    %view_511 = memref.view %alloca_0[%527][] : memref<144xi8> to memref<24xi8>
    %view_512 = memref.view %view_511[%c0][] : memref<24xi8> to memref<f64>
    memref.store %526, %view_512[] : memref<f64>
    %528 = arith.muli %c5, %c24 : index
    %view_513 = memref.view %alloca_0[%528][] : memref<144xi8> to memref<24xi8>
    %view_514 = memref.view %view_513[%c8][] : memref<24xi8> to memref<f64>
    %alloca_515 = memref.alloca() : memref<f64>
    %529 = memref.load %view_514[] : memref<f64>
    memref.store %529, %alloca_515[] : memref<f64>
    %530 = memref.load %alloca_1[] : memref<f64>
    %531 = memref.load %alloca_515[] : memref<f64>
    %532 = arith.mulf %531, %530 : f64
    %533 = arith.muli %c5, %c24 : index
    %view_516 = memref.view %alloca_0[%533][] : memref<144xi8> to memref<24xi8>
    %view_517 = memref.view %view_516[%c8][] : memref<24xi8> to memref<f64>
    memref.store %532, %view_517[] : memref<f64>
    %534 = arith.muli %c5, %c24 : index
    %view_518 = memref.view %alloca_0[%534][] : memref<144xi8> to memref<24xi8>
    %view_519 = memref.view %view_518[%c16][] : memref<24xi8> to memref<f64>
    %alloca_520 = memref.alloca() : memref<f64>
    %535 = memref.load %view_519[] : memref<f64>
    memref.store %535, %alloca_520[] : memref<f64>
    %536 = memref.load %alloca_1[] : memref<f64>
    %537 = memref.load %alloca_520[] : memref<f64>
    %538 = arith.mulf %537, %536 : f64
    %539 = arith.muli %c5, %c24 : index
    %view_521 = memref.view %alloca_0[%539][] : memref<144xi8> to memref<24xi8>
    %view_522 = memref.view %view_521[%c16][] : memref<24xi8> to memref<f64>
    memref.store %538, %view_522[] : memref<f64>
    %alloca_523 = memref.alloca() : memref<24xi8>
    %alloca_524 = memref.alloca() : memref<24xi8>
    %alloca_525 = memref.alloca() : memref<24xi8>
    %540 = arith.muli %c0, %c24 : index
    %view_526 = memref.view %alloca_0[%540][] : memref<144xi8> to memref<24xi8>
    %view_527 = memref.view %view_526[%c0][] : memref<24xi8> to memref<f64>
    %alloca_528 = memref.alloca() : memref<f64>
    %541 = memref.load %view_527[] : memref<f64>
    memref.store %541, %alloca_528[] : memref<f64>
    %542 = arith.muli %c3, %c24 : index
    %view_529 = memref.view %alloca_0[%542][] : memref<144xi8> to memref<24xi8>
    %view_530 = memref.view %view_529[%c0][] : memref<24xi8> to memref<f64>
    %alloca_531 = memref.alloca() : memref<f64>
    %543 = memref.load %view_530[] : memref<f64>
    memref.store %543, %alloca_531[] : memref<f64>
    %544 = memref.load %alloca_528[] : memref<f64>
    %545 = memref.load %alloca_531[] : memref<f64>
    %546 = arith.subf %544, %545 : f64
    %view_532 = memref.view %alloca_523[%c0][] : memref<24xi8> to memref<f64>
    memref.store %546, %view_532[] : memref<f64>
    %547 = arith.muli %c0, %c24 : index
    %view_533 = memref.view %alloca_0[%547][] : memref<144xi8> to memref<24xi8>
    %view_534 = memref.view %view_533[%c8][] : memref<24xi8> to memref<f64>
    %alloca_535 = memref.alloca() : memref<f64>
    %548 = memref.load %view_534[] : memref<f64>
    memref.store %548, %alloca_535[] : memref<f64>
    %549 = arith.muli %c3, %c24 : index
    %view_536 = memref.view %alloca_0[%549][] : memref<144xi8> to memref<24xi8>
    %view_537 = memref.view %view_536[%c8][] : memref<24xi8> to memref<f64>
    %alloca_538 = memref.alloca() : memref<f64>
    %550 = memref.load %view_537[] : memref<f64>
    memref.store %550, %alloca_538[] : memref<f64>
    %551 = memref.load %alloca_535[] : memref<f64>
    %552 = memref.load %alloca_538[] : memref<f64>
    %553 = arith.subf %551, %552 : f64
    %view_539 = memref.view %alloca_523[%c8][] : memref<24xi8> to memref<f64>
    memref.store %553, %view_539[] : memref<f64>
    %554 = arith.muli %c0, %c24 : index
    %view_540 = memref.view %alloca_0[%554][] : memref<144xi8> to memref<24xi8>
    %view_541 = memref.view %view_540[%c16][] : memref<24xi8> to memref<f64>
    %alloca_542 = memref.alloca() : memref<f64>
    %555 = memref.load %view_541[] : memref<f64>
    memref.store %555, %alloca_542[] : memref<f64>
    %556 = arith.muli %c3, %c24 : index
    %view_543 = memref.view %alloca_0[%556][] : memref<144xi8> to memref<24xi8>
    %view_544 = memref.view %view_543[%c16][] : memref<24xi8> to memref<f64>
    %alloca_545 = memref.alloca() : memref<f64>
    %557 = memref.load %view_544[] : memref<f64>
    memref.store %557, %alloca_545[] : memref<f64>
    %558 = memref.load %alloca_542[] : memref<f64>
    %559 = memref.load %alloca_545[] : memref<f64>
    %560 = arith.subf %558, %559 : f64
    %view_546 = memref.view %alloca_523[%c16][] : memref<24xi8> to memref<f64>
    memref.store %560, %view_546[] : memref<f64>
    %561 = arith.muli %c2, %c24 : index
    %view_547 = memref.view %alloca_0[%561][] : memref<144xi8> to memref<24xi8>
    %view_548 = memref.view %view_547[%c0][] : memref<24xi8> to memref<f64>
    %alloca_549 = memref.alloca() : memref<f64>
    %562 = memref.load %view_548[] : memref<f64>
    memref.store %562, %alloca_549[] : memref<f64>
    %563 = arith.muli %c5, %c24 : index
    %view_550 = memref.view %alloca_0[%563][] : memref<144xi8> to memref<24xi8>
    %view_551 = memref.view %view_550[%c0][] : memref<24xi8> to memref<f64>
    %alloca_552 = memref.alloca() : memref<f64>
    %564 = memref.load %view_551[] : memref<f64>
    memref.store %564, %alloca_552[] : memref<f64>
    %565 = memref.load %alloca_549[] : memref<f64>
    %566 = memref.load %alloca_552[] : memref<f64>
    %567 = arith.subf %565, %566 : f64
    %view_553 = memref.view %alloca_524[%c0][] : memref<24xi8> to memref<f64>
    memref.store %567, %view_553[] : memref<f64>
    %568 = arith.muli %c2, %c24 : index
    %view_554 = memref.view %alloca_0[%568][] : memref<144xi8> to memref<24xi8>
    %view_555 = memref.view %view_554[%c8][] : memref<24xi8> to memref<f64>
    %alloca_556 = memref.alloca() : memref<f64>
    %569 = memref.load %view_555[] : memref<f64>
    memref.store %569, %alloca_556[] : memref<f64>
    %570 = arith.muli %c5, %c24 : index
    %view_557 = memref.view %alloca_0[%570][] : memref<144xi8> to memref<24xi8>
    %view_558 = memref.view %view_557[%c8][] : memref<24xi8> to memref<f64>
    %alloca_559 = memref.alloca() : memref<f64>
    %571 = memref.load %view_558[] : memref<f64>
    memref.store %571, %alloca_559[] : memref<f64>
    %572 = memref.load %alloca_556[] : memref<f64>
    %573 = memref.load %alloca_559[] : memref<f64>
    %574 = arith.subf %572, %573 : f64
    %view_560 = memref.view %alloca_524[%c8][] : memref<24xi8> to memref<f64>
    memref.store %574, %view_560[] : memref<f64>
    %575 = arith.muli %c2, %c24 : index
    %view_561 = memref.view %alloca_0[%575][] : memref<144xi8> to memref<24xi8>
    %view_562 = memref.view %view_561[%c16][] : memref<24xi8> to memref<f64>
    %alloca_563 = memref.alloca() : memref<f64>
    %576 = memref.load %view_562[] : memref<f64>
    memref.store %576, %alloca_563[] : memref<f64>
    %577 = arith.muli %c5, %c24 : index
    %view_564 = memref.view %alloca_0[%577][] : memref<144xi8> to memref<24xi8>
    %view_565 = memref.view %view_564[%c16][] : memref<24xi8> to memref<f64>
    %alloca_566 = memref.alloca() : memref<f64>
    %578 = memref.load %view_565[] : memref<f64>
    memref.store %578, %alloca_566[] : memref<f64>
    %579 = memref.load %alloca_563[] : memref<f64>
    %580 = memref.load %alloca_566[] : memref<f64>
    %581 = arith.subf %579, %580 : f64
    %view_567 = memref.view %alloca_524[%c16][] : memref<24xi8> to memref<f64>
    memref.store %581, %view_567[] : memref<f64>
    %582 = arith.muli %c1, %c24 : index
    %view_568 = memref.view %alloca_0[%582][] : memref<144xi8> to memref<24xi8>
    %view_569 = memref.view %view_568[%c0][] : memref<24xi8> to memref<f64>
    %alloca_570 = memref.alloca() : memref<f64>
    %583 = memref.load %view_569[] : memref<f64>
    memref.store %583, %alloca_570[] : memref<f64>
    %584 = arith.muli %c4, %c24 : index
    %view_571 = memref.view %alloca_0[%584][] : memref<144xi8> to memref<24xi8>
    %view_572 = memref.view %view_571[%c0][] : memref<24xi8> to memref<f64>
    %alloca_573 = memref.alloca() : memref<f64>
    %585 = memref.load %view_572[] : memref<f64>
    memref.store %585, %alloca_573[] : memref<f64>
    %586 = memref.load %alloca_570[] : memref<f64>
    %587 = memref.load %alloca_573[] : memref<f64>
    %588 = arith.subf %586, %587 : f64
    %view_574 = memref.view %alloca_525[%c0][] : memref<24xi8> to memref<f64>
    memref.store %588, %view_574[] : memref<f64>
    %589 = arith.muli %c1, %c24 : index
    %view_575 = memref.view %alloca_0[%589][] : memref<144xi8> to memref<24xi8>
    %view_576 = memref.view %view_575[%c8][] : memref<24xi8> to memref<f64>
    %alloca_577 = memref.alloca() : memref<f64>
    %590 = memref.load %view_576[] : memref<f64>
    memref.store %590, %alloca_577[] : memref<f64>
    %591 = arith.muli %c4, %c24 : index
    %view_578 = memref.view %alloca_0[%591][] : memref<144xi8> to memref<24xi8>
    %view_579 = memref.view %view_578[%c8][] : memref<24xi8> to memref<f64>
    %alloca_580 = memref.alloca() : memref<f64>
    %592 = memref.load %view_579[] : memref<f64>
    memref.store %592, %alloca_580[] : memref<f64>
    %593 = memref.load %alloca_577[] : memref<f64>
    %594 = memref.load %alloca_580[] : memref<f64>
    %595 = arith.subf %593, %594 : f64
    %view_581 = memref.view %alloca_525[%c8][] : memref<24xi8> to memref<f64>
    memref.store %595, %view_581[] : memref<f64>
    %596 = arith.muli %c1, %c24 : index
    %view_582 = memref.view %alloca_0[%596][] : memref<144xi8> to memref<24xi8>
    %view_583 = memref.view %view_582[%c16][] : memref<24xi8> to memref<f64>
    %alloca_584 = memref.alloca() : memref<f64>
    %597 = memref.load %view_583[] : memref<f64>
    memref.store %597, %alloca_584[] : memref<f64>
    %598 = arith.muli %c4, %c24 : index
    %view_585 = memref.view %alloca_0[%598][] : memref<144xi8> to memref<24xi8>
    %view_586 = memref.view %view_585[%c16][] : memref<24xi8> to memref<f64>
    %alloca_587 = memref.alloca() : memref<f64>
    %599 = memref.load %view_586[] : memref<f64>
    memref.store %599, %alloca_587[] : memref<f64>
    %600 = memref.load %alloca_584[] : memref<f64>
    %601 = memref.load %alloca_587[] : memref<f64>
    %602 = arith.subf %600, %601 : f64
    %view_588 = memref.view %alloca_525[%c16][] : memref<24xi8> to memref<f64>
    memref.store %602, %view_588[] : memref<f64>
    %603 = call @normL2(%alloca_523) : (memref<24xi8>) -> f64
    %alloca_589 = memref.alloca() : memref<f64>
    memref.store %603, %alloca_589[] : memref<f64>
    %604 = call @normL2(%alloca_524) : (memref<24xi8>) -> f64
    %alloca_590 = memref.alloca() : memref<f64>
    memref.store %604, %alloca_590[] : memref<f64>
    %605 = call @normL2(%alloca_525) : (memref<24xi8>) -> f64
    %alloca_591 = memref.alloca() : memref<f64>
    memref.store %605, %alloca_591[] : memref<f64>
    %606 = memref.load %alloca_589[] : memref<f64>
    %607 = memref.load %alloca_590[] : memref<f64>
    %608 = memref.load %alloca_591[] : memref<f64>
    %609 = arith.mulf %607, %608 : f64
    %610 = arith.mulf %606, %609 : f64
    %alloca_592 = memref.alloca() : memref<f64>
    memref.store %610, %alloca_592[] : memref<f64>
    %611 = memref.load %alloca_589[] : memref<f64>
    %612 = memref.load %alloca_590[] : memref<f64>
    %613 = arith.mulf %611, %612 : f64
    %614 = memref.load %alloca_589[] : memref<f64>
    %615 = memref.load %alloca_591[] : memref<f64>
    %616 = arith.mulf %614, %615 : f64
    %617 = memref.load %alloca_590[] : memref<f64>
    %618 = memref.load %alloca_591[] : memref<f64>
    %619 = arith.mulf %617, %618 : f64
    %620 = arith.addf %616, %619 : f64
    %621 = arith.addf %613, %620 : f64
    %alloca_593 = memref.alloca() : memref<f64>
    memref.store %621, %alloca_593[] : memref<f64>
    %622 = memref.load %alloca_592[] : memref<f64>
    %623 = memref.load %alloca_593[] : memref<f64>
    %624 = arith.divf %622, %623 : f64
    %625 = memref.load %alloca[] : memref<i64>
    %626 = arith.index_cast %625 : i64 to index
    memref.store %624, %arg2[%626] : memref<100xf64>
    return %c0_i64 : i64
  }
}
