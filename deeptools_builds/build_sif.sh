docker build -t local/deeptools .
singularity build deeptools.sif docker-daemon://local/deeptools:latest
