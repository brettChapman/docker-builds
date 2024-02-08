docker build -t local/pgrtk .&>log.txt
singularity build pgrtk.sif docker-daemon://local/pgrtk:latest
