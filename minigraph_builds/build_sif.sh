docker build -t local/minigraph .
singularity build minigraph.sif docker-daemon://local/minigraph:latest
