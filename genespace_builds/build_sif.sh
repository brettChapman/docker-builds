docker build -t local/genespace . &>log.txt
singularity build genespace.sif docker-daemon://local/genespace:latest
