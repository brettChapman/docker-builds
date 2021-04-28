docker build -t local/rseqc .
singularity build rseqc.sif docker-daemon://local/rseqc:latest
