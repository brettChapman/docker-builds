docker build -t local/genometools .
singularity build gt.sif docker-daemon://local/genometools:latest
