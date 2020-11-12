docker build -t local/clustalo .
singularity build clustalo.sif docker-daemon://local/clustalo:latest
