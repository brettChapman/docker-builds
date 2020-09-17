docker build -t local/minimap2 .
singularity build minimap2.sif docker-daemon://local/minimap2:latest
