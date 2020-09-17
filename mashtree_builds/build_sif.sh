docker build -t local/mashtree .
singularity build mashtree.sif docker-daemon://local/mashtree:latest
