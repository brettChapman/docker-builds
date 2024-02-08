#docker build -t local/rmvp .&>log.txt
#singularity build rmvp.sif docker-daemon://local/rmvp:latest

singularity build rmvp2.sif docker://changshengw6/rmvp:1.0.5
