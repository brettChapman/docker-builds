docker build -t local/hifiasm .
singularity build hifiasm.sif docker-daemon://local/hifiasm:latest
