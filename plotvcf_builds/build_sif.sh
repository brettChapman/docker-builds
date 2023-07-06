docker build -t local/plotvcf .
singularity build plotvcf.sif docker-daemon://local/plotvcf:latest
