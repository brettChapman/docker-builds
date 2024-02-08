#If intending to run only on a local machine using multiple threads, then simply create a singularity sif image and comment out the remaining docker commands to copy over the /get_homologues folder.
#docker build -t local/get_homologues .
#singularity build get_homologues.sif docker-daemon://local/get_homologues:latest

#If requiring Get_homologues-est to run on a cluster across nodes, then the /get_homologues folder will need to be exposed to the host system within a shared folder across nodes
containerID=$(sudo docker run -v ${PWD}:${PWD} -it --name GETPANGENES -d local/get_pangenes:latest)

sudo docker cp $containerID:/get_pangenes .

#Once the /get_homologues folder is located within a shared folder copy sample.HPC.conf to HPC.conf in /get_homologues and modify as follows if using slurm:
#TYPE   slurm
#SUBEXE sbatch
#CHKEXE squeue
#DELEXE scancel
#ERROR  F#

#Clean up remaining containers and images
sudo docker stop GETPANGENES
sudo docker rm $containerID

#Remove the local image of Get_homologues-est
imageID=$(docker images -a | sed -n '/local\/get_pangenes/s/ \+/ /gp' | cut -d ' ' -f 3)
docker rmi $imageID

#Remove the original public Docker image of Get_homologues-est
imageID=$(docker images -a | sed -n '/csicunam\/get_pangenes/s/ \+/ /gp' | cut -d ' ' -f 3)
docker rmi $imageID
