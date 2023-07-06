docker build -t local/cemitool . &> log.txt
singularity build cemitool.sif docker-daemon://local/cemitool:latest

#singularity build cemitool_docker_version.sif docker://csblusp/cemitool:latest
