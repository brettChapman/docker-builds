docker build -t local/raisd .
singularity build raisd.sif docker-daemon://local/raisd:latest
