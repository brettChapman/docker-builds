FROM urgi/docker_vre_aio:latest

RUN sudo cp /etc/slurm/slurm.conf .

RUN sudo sed -i "s/CPUs=8/CPUs=16/g" slurm.conf

RUN sudo mv slurm.conf /etc/slurm/slurm.conf

ENV REPET_HOST=localhost
ENV REPET_USER=orepet
ENV REPET_PW=repet_pw
ENV REPET_DB=repet
ENV REPET_PORT=3306

ENV REPET_PATH=/usr/local/REPET_linux-x64-3.0
ENV PYTHONPATH=$REPET_PATH
ENV SMARTPATH=$REPET_PATH/SMART/Java/Python
ENV REPET_JOBS=MySQL
ENV REPET_JOB_MANAGER=slurm
ENV REPET_QUEUE=slurm
ENV PATH=$REPET_PATH/bin:$SMARTPATH:$PATH
