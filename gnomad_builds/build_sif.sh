#singularity build jcvi.sif docker://quay.io/biocontainers/jcvi:1.3.6--py310hd6be1da_0

docker build -t local/gnomad_db . &>log.txt
singularity build gnomad_db.sif docker-daemon://local/gnomad_db:latest
