docker build -t local/gemoma .
singularity build gemoma2.sif docker-daemon://local/gemoma:latest
