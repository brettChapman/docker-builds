docker build -t local/bedr .
singularity build bedr.sif docker-daemon://local/bedr:latest
