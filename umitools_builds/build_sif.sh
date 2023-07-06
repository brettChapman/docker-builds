docker build -t local/umitools .
singularity build umitools.sif docker-daemon://local/umitools:latest
