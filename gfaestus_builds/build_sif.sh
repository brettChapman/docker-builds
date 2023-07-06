docker build -t local/gfaestus .
singularity build gfaestus.sif docker-daemon://local/gfaestus:latest
