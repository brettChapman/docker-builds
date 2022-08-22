#singularity build pggb_v0.4.1.sif docker://ghcr.io/pangenome/pggb:latest

#build container for PGGB supporting R scripts
docker build -t local/pggb_rscripts .
singularity build pggb_rscripts.sif docker-daemon://local/pggb_rscripts:latest
