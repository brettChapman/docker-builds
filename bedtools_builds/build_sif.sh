docker build -t local/bedtools .
singularity build bedtools.sif docker-daemon://local/bedtools:latest
