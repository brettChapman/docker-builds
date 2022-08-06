docker build -t local/gfatools .
singularity build gfatools.sif docker-daemon://local/gfatools:latest
