# CMake generated Testfile for 
# Source directory: /home/lmx/git/arcane-benchs/microhydro/src
# Build directory: /home/lmx/git/arcane-benchs/microhydro/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[microhydro]=] "./MicroHydro" "-A,MaxIteration=50" "MicroHydro.arc")
set_tests_properties([=[microhydro]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/lmx/git/arcane-benchs/microhydro/src/CMakeLists.txt;24;add_test;/home/lmx/git/arcane-benchs/microhydro/src/CMakeLists.txt;0;")
