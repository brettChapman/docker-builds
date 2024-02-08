docker build -t local/glnexus .
singularity build glnexus.sif docker-daemon://local/glnexus:latest
