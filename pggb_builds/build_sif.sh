#singularity build pggb_v0.5.4_Fatica_latest.sif docker://ghcr.io/pangenome/pggb:latest

#singularity build pggb_v0.5.4_Fatica_latest.sif docker://ghcr.io/pangenome/pggb:20230925172849564586

singularity build pggb_v0.5.4_Fatica_latest2.sif docker://ghcr.io/pangenome/pggb:latest
#20231023221136bccc2b

#build container for PGGB supporting R scripts
#docker build -t local/pggb_rscripts .
#singularity build pggb_rscripts.sif docker-daemon://local/pggb_rscripts:latest
