docker build -t local/fasteprr .
singularity build fasteprr_v1.0.sif docker-daemon://local/fasteprr:latest
