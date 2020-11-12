docker build -t local/edta .
singularity build edta.sif docker-daemon://local/edta:latest
#singularity build edta.sif docker://kapeel/edta:latest

#check hmmscan and hmmpress in path. check databases indexed by hmmpress.
#/opt/conda/lib/python3.7/site-packages/TEsorter/database
