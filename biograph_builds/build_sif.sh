docker build -t local/biograph .
singularity build biograph.sif docker-daemon://local/biograph:latest
