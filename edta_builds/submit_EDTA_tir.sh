#!/bin/bash
#SBATCH --nodes=1
# allow use of all the memory on the node
#SBATCH --ntasks-per-node=16
#SBATCH --mem=0
# request all CPU cores on the node
#SBATCH --exclusive
# Customize --time --partition as appropriate
#SBATCH --partition=debug

set -o nounset -o errexit -o xtrace

## Usage: sbatch submit_EDTA_tir.sh genome.fna

genome_file=$1
original_folder=${PWD}

readonly GENOME=$original_folder'/'$genome_file
readonly EDTA_IMAGE=/data/edta_builds/edta.sif

srun -n 1 singularity exec --bind ${PWD}:${PWD} ${EDTA_IMAGE} EDTA_raw.pl --threads ${SLURM_NTASKS_PER_NODE} --genome ${GENOME} --type tir
