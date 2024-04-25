docker build -t local/gretl .
singularity build gretl.sif docker-daemon://local/gretl:latest
