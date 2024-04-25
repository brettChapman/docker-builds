docker build -t local/panacus .
singularity build panacus.sif docker-daemon://local/panacus:latest
