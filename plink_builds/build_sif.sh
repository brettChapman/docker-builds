#docker build -t local/plink2 .
#singularity build plink2.sif docker-daemon://local/plink2:latest

singularity build plink2.sif docker://quay.io/biocontainers/plink2:2.00a5--h4ac6f70_0
