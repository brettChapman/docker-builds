#singularity build tximport.sif docker://quay.io/biocontainers/bioconductor-tximport:1.28.0--r43hdfd78af_0
#singularity build tximport.sif docker://bianca7/tximport:latest

docker build -t local/tximport .
singularity build tximport.sif docker-daemon://local/tximport:latest
