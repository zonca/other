#!/bin/bash
# the queue to be used
#PBS -q normal
# specify your project allocation
##PBS -A uic314
# number of nodes and number of processors per node requested
#PBS -l nodes=3:ppn=32
# requested Wall-clock time.
#PBS -l walltime=00:01:00
# name of the standard out file to be "output-file".
#PBS -o output.$PBS_JOBID.txt
# name of the job
#PBS -N Test_Job
#PBS -V
cd $PBS_O_WORKDIR #change to the working directory
mpirun_rsh -np 96  -hostfile $PBS_NODEFILE python test.py
