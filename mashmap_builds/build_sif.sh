docker build -t local/mashmap .
singularity build mashmap.sif docker-daemon://local/mashmap:latest
