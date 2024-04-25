#sudo rm -dr vg/
#git clone --recursive --branch for-brett https://github.com/vgteam/vg.git
#cd vg/
#docker build -t local/vg .

#singularity build vg_xhchang.sif docker://xhchang/vg:test
#docker-daemon://local/vg:latest

#singularity build vg.sif docker://quay.io/vgteam/vg:v1.50.1
singularity build vg.sif docker://quay.io/vgteam/vg:v1.55.0

#singularity build vg_1.21.0.sif docker://quay.io/vgteam/vg:v1.21.0
