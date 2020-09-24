docker build -t local/blast .
singularity build blast.sif docker-daemon://local/blast:latest
