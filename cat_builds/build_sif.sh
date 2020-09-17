docker build -t local/cat .
singularity build cat.sif docker-daemon://local/cat:latest
