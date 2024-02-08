docker build -t local/get_pangenes . &>log.txt
singularity build get_pangenes.sif docker-daemon://local/get_pangenes:latest
