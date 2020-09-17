#!/bin/bash

# Usage: bash ./batch_EDTA.sh genome.fna

readonly GENOME=$1

job1=$(sbatch submit_EDTA_ltr.sh ${GENOME} | cut -d ' ' -f 4)
job2=$(sbatch submit_EDTA_tir.sh ${GENOME} | cut -d ' ' -f 4)
job3=$(sbatch submit_EDTA_helitron.sh ${GENOME} | cut -d ' ' -f 4)

sbatch --dependency=afterok:$job1:$job2:$job3 submit_EDTA_final.sh ${GENOME}
