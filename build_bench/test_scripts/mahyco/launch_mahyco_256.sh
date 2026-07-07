#!/bin/sh
/usr/lib64/openmpi/bin/mpiexec -n 256 ${MPI_ARGS} /home/harterl/git/arcane-benchs/build_bench/mahyco/src/Mahyco -A,MaxIteration=50 /home/harterl/git/arcane-benchs/mahyco/data/Data.256.arc
