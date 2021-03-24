#docker build -t local/pggb .
#singularity build pggb.sif docker-daemon://local/pggb:latest

singularity build pggb.sif docker://ghcr.io/pangenome/pggb:latest
#20201130143807d2fc2a
#latest
