docker build -t local/emboss .
singularity build emboss.sif docker-daemon://local/emboss:latest
