docker build -t local/waragraph .&>log.txt
singularity build waragraph.sif docker-daemon://local/waragraph:latest
