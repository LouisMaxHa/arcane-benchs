#!/bin/sh
export OMPI_MCA_rmaps_base_oversubscribe=1
/usr/lib64/openmpi/bin/mpiexec -n 4 ${MPI_ARGS} /home/harterl/git/arcane-benchs/build_bench/qama/src/qama -A,T=2,MaxIteration=100,ReferenceDirectory=/home/harterl/git/arcane-benchs/qama/reference_files /home/harterl/git/arcane-benchs/qama/data/tests/ExampleFull.arc
