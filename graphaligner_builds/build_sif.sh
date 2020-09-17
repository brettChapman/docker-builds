docker build -t local/graphaligner .
singularity build graphaligner.sif docker-daemon://local/graphaligner:latest
