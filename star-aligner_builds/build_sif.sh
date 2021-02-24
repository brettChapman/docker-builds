docker build -t local/star .
singularity build star.sif docker-daemon://local/star:latest
