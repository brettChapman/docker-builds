#!/bin/bash
#SBATCH --nodes=1
# allow use of all the memory on the node
#SBATCH --ntasks-per-node=16
#SBATCH --mem=0
# request all CPU cores on the node
#SBATCH --exclusive
# Customize --time --partition as appropriate
#SBATCH --partition=debug

set -o nounset -o errexit -o xtrace

readonly PROJECT_NAME=$1
readonly original_folder=${PWD}
readonly TEdenovo_WD=${original_folder}'/'${PROJECT_NAME}_TEdenovo
readonly TEannot_WD=${original_folder}'/'${PROJECT_NAME}_TEannot

#Build the local install of REPET
srun -n 1 sudo docker build -t local/repet .

#Create TEdenovo TEannot working directories
mkdir ${TEdenovo_WD}
mkdir ${TEannot_WD}

#Make working directories writable by anybody
chmod 777 ${TEdenovo_WD}
chmod 777 ${TEannot_WD}

cd ${TEdenovo_WD}

#Prepere the TEdenovo config file
sudo cat ${original_folder}'/'TEdenovo.cfg.template | sed "s/<project_name>/${PROJECT_NAME}/g" | sed 's?<working_directory>?'`pwd`'?' | sed 's/\/\//\//g' > ${TEdenovo_WD}'/'TEdenovo.cfg

#Note: Copying instead of symlinks is necessary as we're running from a Docker container which may brake the symlinks from the host

#Copy across the genome
sudo cp ${original_folder}'/'${PROJECT_NAME}.fa .

#Copy across the RepBase files
sudo cp ${original_folder}'/'*.fsa .

#Copy across the HMM files
sudo cp ${original_folder}'/'*.hmm .

#Deploy the REPET container
srun -n 1 sudo docker run -v ${PWD}/:/home/centos/${PWD} -p 222:22 --name REPET -d local/repet:latest

#Sleep for 10 min, as logging into the container straight after creation not always works
srun -n 1 sudo sleep 10m

#Log into the REPET container and run the TEdenovo commands
srun -n 1 sudo sshpass -p centos ssh -o "StrictHostKeyChecking no" -p 222 centos@localhost launch_TEdenovo.py -P ${PROJECT_NAME} -C /home/centos/$PWD/TEdenovo.cfg --struct -f MCL -v 3 > TEdenovo_${PROJECT_NAME}_struct.txt

#Stop the container once TEdenovo has completed
srun -n 1 sudo docker stop REPET

#Remove the stopped container
containerID=$(srun -n 1 sudo docker ps -a | grep "local/repet" | cut -d ' ' -f 1)
srun -n 1 sudo docker rm $containerID

#Remove redundant files
sudo rm ${TEdenovo_WD}'/'${PROJECT_NAME}.fa
sudo rm ${TEdenovo_WD}'/'*.fsa
sudo rm ${TEdenovo_WD}'/'*.hmm

cd ${TEannot_WD}

#Prepere the TEannot config file
sudo cat ${original_folder}'/'TEannot.cfg.template | sed "s/<project_name>/${PROJECT_NAME}/g" | sed 's?<working_directory>?'`pwd`'?' | sed 's/\/\//\//g' > ${TEannot_WD}'/'TEannot.cfg

#Copy across the genome
sudo cp ${original_folder}'/'${PROJECT_NAME}.fa .

#Copy across the TE library
sudo cp ${TEdenovo_WD}'/'${PROJECT_NAME}_Blaster_GrpRecPil_Struct_Map_TEclassif_Filtered/${PROJECT_NAME}_denovoLibTEs_filtered.fa ${PROJECT_NAME}_refTEs.fa

#Deploy the REPET container
srun -n 1 sudo docker run -v ${PWD}/:/home/centos/${PWD} -p 222:22 --name REPET -d local/repet:latest

#Sleep for 10 min, as logging into the container straight after creation not always works
srun -n 1 sudo sleep 10m

#Log into the REPET container and run the TEannot commands
srun -n 1 sudo sshpass -p centos ssh -o "StrictHostKeyChecking no" -p 222 centos@localhost launch_TEannot.py -P ${PROJECT_NAME} -C /home/centos/$PWD/TEannot.cfg -v 3 > TEannot_${PROJECT_NAME}.txt

#Stop the container once TEdenovo has completed
srun -n 1 sudo docker stop REPET

#Remove the stopped container
containerID=$(srun -n 1 sudo docker ps -a | grep "local/repet" | cut -d ' ' -f 1)
srun -n 1 sudo docker rm $containerID

#Remove redundant files
sudo rm ${TEannot_WD}'/'${PROJECT_NAME}.fa
sudo rm ${TEannot_WD}'/'${PROJECT_NAME}_refTEs.fa

#Remove the local repet image
imageID=$(srun -n 1 sudo docker images -a | sed -n '/local\/repet/s/ \+/ /gp' | cut -d ' ' -f 3)
srun -n 1 sudo docker rmi $imageID

#Remove the URGI repet image
imageID=$(srun -n 1 sudo docker images -a | sed -n '/urgi\/docker_vre_aio/s/ \+/ /gp' | cut -d ' ' -f 3)
srun -n 1 sudo docker rmi $imageID
