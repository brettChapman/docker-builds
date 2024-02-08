#docker build -t local/pbtk .&>log.txt
#singularity build pbtk.sif docker-daemon://local/pbtk:latest
singularity build pbtk.sif docker://quay.io/biocontainers/pbtk:3.1.1--h9ee0642_0
