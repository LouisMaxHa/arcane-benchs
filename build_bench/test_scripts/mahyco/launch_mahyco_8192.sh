#!/bin/sh
/usr/lib64/openmpi/bin/mpiexec -n 8192 ${MPI_ARGS} /home/harterl/git/arcane-benchs/build_bench/mahyco/src/Mahyco -A,MaxIteration=50 /home/harterl/git/arcane-benchs/mahyco/data/Data.8192.arc
