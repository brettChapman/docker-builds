docker build -t local/edta .
singularity build edta.sif docker-daemon://local/edta:latest
