builtin.module {
  func.func @normL2(%r1Arg: memref<24xi8>) -> f64 attributes {llvm.emit_c_interface} {
    %const16.index = arith.constant 16 : index
    %const8.index = arith.constant 8 : index
    %const0.index = arith.constant 0 : index
    %0 = memref.view %r1Arg[%const0.index][] : memref<24xi8> to memref<f64>
    %1 = memref.alloca() : memref<f64>
    %2 = memref.load %0[] : memref<f64>
    memref.store %2, %1[] : memref<f64>
    %3 = memref.view %r1Arg[%const0.index][] : memref<24xi8> to memref<f64>
    %4 = memref.alloca() : memref<f64>
    %5 = memref.load %3[] : memref<f64>
    memref.store %5, %4[] : memref<f64>
    %6 = memref.load %1[] : memref<f64>
    %7 = memref.load %4[] : memref<f64>
    %8 = arith.mulf %6, %7 : f64
    %9 = memref.view %r1Arg[%const8.index][] : memref<24xi8> to memref<f64>
    %10 = memref.alloca() : memref<f64>
    %11 = memref.load %9[] : memref<f64>
    memref.store %11, %10[] : memref<f64>
    %12 = memref.view %r1Arg[%const8.index][] : memref<24xi8> to memref<f64>
    %13 = memref.alloca() : memref<f64>
    %14 = memref.load %12[] : memref<f64>
    memref.store %14, %13[] : memref<f64>
    %15 = memref.load %10[] : memref<f64>
    %16 = memref.load %13[] : memref<f64>
    %17 = arith.mulf %15, %16 : f64
    %18 = memref.view %r1Arg[%const16.index][] : memref<24xi8> to memref<f64>
    %19 = memref.alloca() : memref<f64>
    %20 = memref.load %18[] : memref<f64>
    memref.store %20, %19[] : memref<f64>
    %21 = memref.view %r1Arg[%const16.index][] : memref<24xi8> to memref<f64>
    %22 = memref.alloca() : memref<f64>
    %23 = memref.load %21[] : memref<f64>
    memref.store %23, %22[] : memref<f64>
    %24 = memref.load %19[] : memref<f64>
    %25 = memref.load %22[] : memref<f64>
    %26 = arith.mulf %24, %25 : f64
    %27 = arith.addf %17, %26 : f64
    %28 = arith.addf %8, %27 : f64
    func.return %28 : f64
  }
  func.func @xdsl_main(%face_coordArg: memref<144xi8>, %cidArg: i64, %out_caracteristic_lengthArg: memref<2400xi8>) -> i64 attributes {llvm.emit_c_interface} {
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
    memref.store %cidArg, %0[] : memref<i64>
    %1 = memref.alloca() : memref<24xi8>
    %2 = arith.muli %const0.index, %const24.index : index
    %3 = memref.subview %face_coordArg[%2] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %4 = memref.view %3[%const0.index][] : memref<24xi8> to memref<f64>
    %5 = memref.alloca() : memref<f64>
    %6 = memref.load %4[] : memref<f64>
    memref.store %6, %5[] : memref<f64>
    %7 = arith.muli %const3.index, %const24.index : index
    %8 = memref.subview %face_coordArg[%7] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %9 = memref.view %8[%const0.index][] : memref<24xi8> to memref<f64>
    %10 = memref.alloca() : memref<f64>
    %11 = memref.load %9[] : memref<f64>
    memref.store %11, %10[] : memref<f64>
    %12 = memref.load %5[] : memref<f64>
    %13 = memref.load %10[] : memref<f64>
    %14 = arith.subf %12, %13 : f64
    %15 = memref.view %1[%const0.index][] : memref<24xi8> to memref<f64>
    memref.store %14, %15[] : memref<f64>
    %16 = arith.muli %const0.index, %const24.index : index
    %17 = memref.subview %face_coordArg[%16] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %18 = memref.view %17[%const8.index][] : memref<24xi8> to memref<f64>
    %19 = memref.alloca() : memref<f64>
    %20 = memref.load %18[] : memref<f64>
    memref.store %20, %19[] : memref<f64>
    %21 = arith.muli %const3.index, %const24.index : index
    %22 = memref.subview %face_coordArg[%21] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %23 = memref.view %22[%const8.index][] : memref<24xi8> to memref<f64>
    %24 = memref.alloca() : memref<f64>
    %25 = memref.load %23[] : memref<f64>
    memref.store %25, %24[] : memref<f64>
    %26 = memref.load %19[] : memref<f64>
    %27 = memref.load %24[] : memref<f64>
    %28 = arith.subf %26, %27 : f64
    %29 = memref.view %1[%const8.index][] : memref<24xi8> to memref<f64>
    memref.store %28, %29[] : memref<f64>
    %30 = arith.muli %const0.index, %const24.index : index
    %31 = memref.subview %face_coordArg[%30] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %32 = memref.view %31[%const16.index][] : memref<24xi8> to memref<f64>
    %33 = memref.alloca() : memref<f64>
    %34 = memref.load %32[] : memref<f64>
    memref.store %34, %33[] : memref<f64>
    %35 = arith.muli %const3.index, %const24.index : index
    %36 = memref.subview %face_coordArg[%35] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %37 = memref.view %36[%const16.index][] : memref<24xi8> to memref<f64>
    %38 = memref.alloca() : memref<f64>
    %39 = memref.load %37[] : memref<f64>
    memref.store %39, %38[] : memref<f64>
    %40 = memref.load %33[] : memref<f64>
    %41 = memref.load %38[] : memref<f64>
    %42 = arith.subf %40, %41 : f64
    %43 = memref.view %1[%const16.index][] : memref<24xi8> to memref<f64>
    memref.store %42, %43[] : memref<f64>
    %44 = memref.alloca() : memref<24xi8>
    %45 = arith.muli %const2.index, %const24.index : index
    %46 = memref.subview %face_coordArg[%45] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %47 = memref.view %46[%const0.index][] : memref<24xi8> to memref<f64>
    %48 = memref.alloca() : memref<f64>
    %49 = memref.load %47[] : memref<f64>
    memref.store %49, %48[] : memref<f64>
    %50 = arith.muli %const5.index, %const24.index : index
    %51 = memref.subview %face_coordArg[%50] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %52 = memref.view %51[%const0.index][] : memref<24xi8> to memref<f64>
    %53 = memref.alloca() : memref<f64>
    %54 = memref.load %52[] : memref<f64>
    memref.store %54, %53[] : memref<f64>
    %55 = memref.load %48[] : memref<f64>
    %56 = memref.load %53[] : memref<f64>
    %57 = arith.subf %55, %56 : f64
    %58 = memref.view %44[%const0.index][] : memref<24xi8> to memref<f64>
    memref.store %57, %58[] : memref<f64>
    %59 = arith.muli %const2.index, %const24.index : index
    %60 = memref.subview %face_coordArg[%59] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %61 = memref.view %60[%const8.index][] : memref<24xi8> to memref<f64>
    %62 = memref.alloca() : memref<f64>
    %63 = memref.load %61[] : memref<f64>
    memref.store %63, %62[] : memref<f64>
    %64 = arith.muli %const5.index, %const24.index : index
    %65 = memref.subview %face_coordArg[%64] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %66 = memref.view %65[%const8.index][] : memref<24xi8> to memref<f64>
    %67 = memref.alloca() : memref<f64>
    %68 = memref.load %66[] : memref<f64>
    memref.store %68, %67[] : memref<f64>
    %69 = memref.load %62[] : memref<f64>
    %70 = memref.load %67[] : memref<f64>
    %71 = arith.subf %69, %70 : f64
    %72 = memref.view %44[%const8.index][] : memref<24xi8> to memref<f64>
    memref.store %71, %72[] : memref<f64>
    %73 = arith.muli %const2.index, %const24.index : index
    %74 = memref.subview %face_coordArg[%73] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %75 = memref.view %74[%const16.index][] : memref<24xi8> to memref<f64>
    %76 = memref.alloca() : memref<f64>
    %77 = memref.load %75[] : memref<f64>
    memref.store %77, %76[] : memref<f64>
    %78 = arith.muli %const5.index, %const24.index : index
    %79 = memref.subview %face_coordArg[%78] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %80 = memref.view %79[%const16.index][] : memref<24xi8> to memref<f64>
    %81 = memref.alloca() : memref<f64>
    %82 = memref.load %80[] : memref<f64>
    memref.store %82, %81[] : memref<f64>
    %83 = memref.load %76[] : memref<f64>
    %84 = memref.load %81[] : memref<f64>
    %85 = arith.subf %83, %84 : f64
    %86 = memref.view %44[%const16.index][] : memref<24xi8> to memref<f64>
    memref.store %85, %86[] : memref<f64>
    %87 = memref.alloca() : memref<24xi8>
    %88 = arith.muli %const1.index, %const24.index : index
    %89 = memref.subview %face_coordArg[%88] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %90 = memref.view %89[%const0.index][] : memref<24xi8> to memref<f64>
    %91 = memref.alloca() : memref<f64>
    %92 = memref.load %90[] : memref<f64>
    memref.store %92, %91[] : memref<f64>
    %93 = arith.muli %const4.index, %const24.index : index
    %94 = memref.subview %face_coordArg[%93] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %95 = memref.view %94[%const0.index][] : memref<24xi8> to memref<f64>
    %96 = memref.alloca() : memref<f64>
    %97 = memref.load %95[] : memref<f64>
    memref.store %97, %96[] : memref<f64>
    %98 = memref.load %91[] : memref<f64>
    %99 = memref.load %96[] : memref<f64>
    %100 = arith.subf %98, %99 : f64
    %101 = memref.view %87[%const0.index][] : memref<24xi8> to memref<f64>
    memref.store %100, %101[] : memref<f64>
    %102 = arith.muli %const1.index, %const24.index : index
    %103 = memref.subview %face_coordArg[%102] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %104 = memref.view %103[%const8.index][] : memref<24xi8> to memref<f64>
    %105 = memref.alloca() : memref<f64>
    %106 = memref.load %104[] : memref<f64>
    memref.store %106, %105[] : memref<f64>
    %107 = arith.muli %const4.index, %const24.index : index
    %108 = memref.subview %face_coordArg[%107] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %109 = memref.view %108[%const8.index][] : memref<24xi8> to memref<f64>
    %110 = memref.alloca() : memref<f64>
    %111 = memref.load %109[] : memref<f64>
    memref.store %111, %110[] : memref<f64>
    %112 = memref.load %105[] : memref<f64>
    %113 = memref.load %110[] : memref<f64>
    %114 = arith.subf %112, %113 : f64
    %115 = memref.view %87[%const8.index][] : memref<24xi8> to memref<f64>
    memref.store %114, %115[] : memref<f64>
    %116 = arith.muli %const1.index, %const24.index : index
    %117 = memref.subview %face_coordArg[%116] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %118 = memref.view %117[%const16.index][] : memref<24xi8> to memref<f64>
    %119 = memref.alloca() : memref<f64>
    %120 = memref.load %118[] : memref<f64>
    memref.store %120, %119[] : memref<f64>
    %121 = arith.muli %const4.index, %const24.index : index
    %122 = memref.subview %face_coordArg[%121] [%const24.index] [%const1.index] : memref<144xi8> to memref<24xi8>
    %123 = memref.view %122[%const16.index][] : memref<24xi8> to memref<f64>
    %124 = memref.alloca() : memref<f64>
    %125 = memref.load %123[] : memref<f64>
    memref.store %125, %124[] : memref<f64>
    %126 = memref.load %119[] : memref<f64>
    %127 = memref.load %124[] : memref<f64>
    %128 = arith.subf %126, %127 : f64
    %129 = memref.view %87[%const16.index][] : memref<24xi8> to memref<f64>
    memref.store %128, %129[] : memref<f64>
    %130 = func.call @normL2(%1) : (memref<24xi8>) -> f64
    %131 = memref.alloca() : memref<f64>
    memref.store %130, %131[] : memref<f64>
    %132 = func.call @normL2(%44) : (memref<24xi8>) -> f64
    %133 = memref.alloca() : memref<f64>
    memref.store %132, %133[] : memref<f64>
    %134 = func.call @normL2(%87) : (memref<24xi8>) -> f64
    %135 = memref.alloca() : memref<f64>
    memref.store %134, %135[] : memref<f64>
    %136 = memref.load %131[] : memref<f64>
    %137 = memref.load %133[] : memref<f64>
    %138 = memref.load %135[] : memref<f64>
    %139 = arith.mulf %137, %138 : f64
    %140 = arith.mulf %136, %139 : f64
    %141 = memref.alloca() : memref<f64>
    memref.store %140, %141[] : memref<f64>
    %142 = memref.load %131[] : memref<f64>
    %143 = memref.load %133[] : memref<f64>
    %144 = arith.mulf %142, %143 : f64
    %145 = memref.load %131[] : memref<f64>
    %146 = memref.load %135[] : memref<f64>
    %147 = arith.mulf %145, %146 : f64
    %148 = memref.load %133[] : memref<f64>
    %149 = memref.load %135[] : memref<f64>
    %150 = arith.mulf %148, %149 : f64
    %151 = arith.addf %147, %150 : f64
    %152 = arith.addf %144, %151 : f64
    %153 = memref.alloca() : memref<f64>
    memref.store %152, %153[] : memref<f64>
    %154 = memref.load %141[] : memref<f64>
    %155 = memref.load %153[] : memref<f64>
    %156 = arith.divf %154, %155 : f64
    %157 = memref.load %0[] : memref<i64>
    memref.store %156, %out_caracteristic_lengthArg[%157] : memref<2400xi8>
    %158 = memref.load %0[] : memref<i64>
    memref.store %const0.1.f64, %out_caracteristic_lengthArg[%158] : memref<2400xi8>
    func.return %const0.i64 : i64
  }
}