#!/bin/sh
export OMPI_MCA_rmaps_base_oversubscribe=1
/usr/lib64/openmpi/bin/mpiexec -n 8 ${MPI_ARGS} /home/harterl/git/arcane-benchs/build_bench/microhydro/MicroHydro -A,MaxIteration=50,ReferenceDirectory=/home/harterl/git/arcane-benchs/microhydro/reference_files /home/harterl/git/arcane-benchs/microhydro/data/MicroHydro.lb8.1.arc
