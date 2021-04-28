docker build -t local/longqc .
singularity build longqc.sif docker-daemon://local/longqc:latest
