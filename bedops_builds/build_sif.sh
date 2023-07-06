docker build -t local/bedops .
singularity build bedops.sif docker-daemon://local/bedops:latest
