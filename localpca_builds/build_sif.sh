docker build -t local/localpca .
singularity build localpca.sif docker-daemon://local/localpca:latest
