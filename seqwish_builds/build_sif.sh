docker build -t local/seqwish .
singularity build seqwish.sif docker-daemon://local/seqwish:latest
