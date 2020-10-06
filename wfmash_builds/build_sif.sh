docker build -t local/wfmash .
singularity build wfmash.sif docker-daemon://local/wfmash:latest
