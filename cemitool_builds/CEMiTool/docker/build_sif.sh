docker build -t local/cemitool .
singularity build cemitool.sif docker-daemon://local/cemitool:latest
