docker build -t local/vcftoolz .
singularity build vcftoolz.sif docker-daemon://local/vcftoolz:latest
