docker build -t local/tabix .
singularity build tabix.sif docker-daemon://local/tabix:latest
