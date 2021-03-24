docker build -t local/scoary .
singularity build scoary.sif docker-daemon://local/scoary:latest
