#singularity build bcftools.sif docker://biocontainers/bcftools:v1.9-1-deb_cv1
#singularity build bcftools.sif docker://bschiffthaler/bcftools:latest
#singularity build bcftools.sif docker://staphb/bcftools:latest
#singularity build bcftools.sif docker://pegi3s/samtools_bcftools:latest

docker build -t local/bcftools .
singularity build bcftools.sif docker-daemon://local/bcftools:latest
