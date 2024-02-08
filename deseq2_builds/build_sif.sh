docker build -t local/deseq2 .
singularity build deseq2.sif docker-daemon://local/deseq2:latest
