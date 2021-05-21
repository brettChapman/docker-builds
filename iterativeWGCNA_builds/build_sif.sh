docker build -t local/iterative_wgcna .
singularity build iterative_wgcna.sif docker-daemon://local/iterative_wgcna:latest
