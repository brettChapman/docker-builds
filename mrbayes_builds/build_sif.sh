docker build -t local/mrbayes .
singularity build mrbayes.sif docker-daemon://local/mrbayes:latest
