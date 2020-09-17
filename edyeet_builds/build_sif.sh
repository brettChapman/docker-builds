docker build -t local/edyeet .
singularity build edyeet.sif docker-daemon://local/edyeet:latest
