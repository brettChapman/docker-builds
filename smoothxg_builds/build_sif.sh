docker build -t local/smoothxg .
singularity build smoothxg.sif docker-daemon://local/smoothxg:latest
