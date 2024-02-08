docker build -t local/longqc .&>log.txt
singularity build longqc.sif docker-daemon://local/longqc:latest
