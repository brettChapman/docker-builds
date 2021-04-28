docker build -t local/graphviz .
singularity build graphviz.sif docker-daemon://local/graphviz:latest
