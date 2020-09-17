docker build -t local/odgi .
singularity build odgi.sif docker-daemon://local/odgi:latest
