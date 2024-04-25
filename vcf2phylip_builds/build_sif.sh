docker build -t local/vcf2phylip .
singularity build vcf2phylip.sif docker-daemon://local/vcf2phylip:latest
