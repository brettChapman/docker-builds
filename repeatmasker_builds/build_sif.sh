docker build -t local/repeatmasker .
singularity build repeatmasker.sif docker-daemon://local/repeatmasker:latest
