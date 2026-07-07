# CMake generated Testfile for 
# Source directory: /home/harterl/git/arcane-benchs
# Build directory: /home/harterl/git/arcane-benchs/build_bench
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[microhydro_MicroHydro.1.1_1proc]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/microhydro/launch_microhydro_MicroHydro.1.1_1proc.sh")
set_tests_properties([=[microhydro_MicroHydro.1.1_1proc]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;81;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
add_test([=[microhydro_MicroHydro.lb8.1_8proc]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/microhydro/launch_microhydro_MicroHydro.lb8.1_8proc.sh")
set_tests_properties([=[microhydro_MicroHydro.lb8.1_8proc]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;81;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
add_test([=[mahyco_1proc]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/mahyco/launch_mahyco_1.sh")
set_tests_properties([=[mahyco_1proc]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;100;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
add_test([=[mahyco_4proc]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/mahyco/launch_mahyco_4.sh")
set_tests_properties([=[mahyco_4proc]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;101;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
add_test([=[qama_ExampleFull_4proc_1thread]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/qama/launch_qama_ExampleFull_4proc_1thread.sh")
set_tests_properties([=[qama_ExampleFull_4proc_1thread]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;139;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
add_test([=[qama_ExampleFull_4proc_2thread]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/qama/launch_qama_ExampleFull_4proc_2thread.sh")
set_tests_properties([=[qama_ExampleFull_4proc_2thread]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;139;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
add_test([=[qama_ExampleFull_1proc_4thread]=] "/bin/sh" "/home/harterl/git/arcane-benchs/build_bench/test_scripts/qama/launch_qama_ExampleFull_1proc_4thread.sh")
set_tests_properties([=[qama_ExampleFull_1proc_4thread]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/harterl/git/arcane-benchs/CMakeLists.txt;139;add_test;/home/harterl/git/arcane-benchs/CMakeLists.txt;0;")
subdirs("microhydro")
subdirs("mahyco")
subdirs("qama")
subdirs("synchronize/src")
