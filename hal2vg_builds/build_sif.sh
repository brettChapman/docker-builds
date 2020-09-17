docker build -t local/hal2vg .
singularity build hal2vg.sif docker-daemon://local/hal2vg:latest
