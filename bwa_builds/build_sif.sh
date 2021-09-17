docker build -t local/bwa .
singularity build bwa.sif docker-daemon://local/bwa:latest
