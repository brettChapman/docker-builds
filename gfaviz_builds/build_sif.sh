docker build -t local/gfaviz .
singularity build gfaviz.sif docker-daemon://local/gfaviz:latest
