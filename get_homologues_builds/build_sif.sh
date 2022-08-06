docker build -t local/get_homologues .
singularity build get_homologues.sif docker-daemon://local/get_homologues:latest
