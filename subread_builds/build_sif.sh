docker build -t local/subread .
singularity build subread.sif docker-daemon://local/subread:latest
