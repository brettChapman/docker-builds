docker build -t local/cemitool .
singularity build cemitool.sif docker-daemon://local/cemitool:latest

#singularity build cemitool_docker_version.sif docker://csblusp/cemitool:latest
