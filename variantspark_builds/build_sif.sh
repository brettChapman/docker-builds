#docker build -t local/variantspark .
#singularity build variantspark.sif docker-daemon://local/variantspark:latest

singularity build variantspark.sif docker://jamesrcounts/variantspark:latest
