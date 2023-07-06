FROM ubuntu:jammy

#RUN apt-get install update-manager-core -yqq




ARG DEBIAN_FRONTEND=noninteractive


#RUN sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
#RUN echo "deb http://old-releases.ubuntu.com/ubuntu focal-security main" >> /etc/apt/sources.list

#RUN sed -i -e 's|disco|focal|g' /etc/apt/sources.list

#RUN cp /etc/apt/sources.list /etc/apt/sources.list~
#RUN sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends software-properties-common dirmngr wget
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

RUN apt-get update && apt-get install -y dialog apt-utils git systemd tzdata r-base r-base-dev \
        libssl-dev libssh2-1-dev pandoc make cmake gcc libcurl4 libcurl4-openssl-dev libxml2-dev libudunits2-dev && rm -rf /var/lib/apt/lists/*

#RUN apt-get -y build-dep libcurl4-gnutls-dev
#RUN apt-get -y install libcurl4-gnutls-dev --fix-broken

#RUN apt-get -y install libfontconfig-dev libharfbuzz-dev install libtiff-dev

env TZ UTC

RUN wget https://github.com/davidemms/OrthoFinder/releases/latest/download/OrthoFinder.tar.gz && \	
	tar -xzf OrthoFinder.tar.gz

ENV PATH=$PATH:OrthoFinder/

RUN which orthofinder	
#dialog apt-utils git systemd tzdata r-base r-base-dev \
#        libssl-dev libssh2-1-dev pandoc libcurl4 libcurl4-openssl-dev libxml2-dev libudunits2-dev \
#        && rm -rf /var/lib/apt/lists/*

#ENV CONDA_DIR /opt/conda
#RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
#        /bin/bash ~/miniconda.sh -b -p /opt/conda

#ENV PATH=$CONDA_DIR/bin:$PATH

#env TZ UTC


#https://github.com/davidemms/OrthoFinder/releases/download/2.5.4/OrthoFinder.tar.gz

#RUN conda init bash

#RUN git clone --recursive https://github.com/brettChapman/CEMiTool.git

#RUN conda create -n orthofinder
#RUN conda activate orthofinder
#RUN conda install -c bioconda orthofinder 

RUN git clone --recursive https://github.com/jtlovell/GENESPACE.git

WORKDIR /GENESPACE

RUN R -e "install.packages('devtools')"

RUN R -e "install.packages('BiocManager')"

#RUN R -e "install.packages('devtools', 'BiocManager')"

RUN R -e "BiocManager::install(c('Biostrings', 'rtracklayer'))"

#docopt')"

#RUN /usr/bin/Rscript docker/install-deps.R 

RUN R -e "library(devtools)"

RUN R -e "devtools::install_github('jtlovell/GENESPACE', upgrade = F)"


##3

#FROM continuumio/miniconda3

#WORKDIR /app

# Create the environment:
#COPY environment.yml .
#RUN conda env create -f environment.yml

# Activate the environment, and make sure it's activated:
#RUN conda activate myenv
#RUN echo "Make sure flask is installed:"
#RUN python -c "import flask"

# The code to run when container is started:
#COPY run.py .
#ENTRYPOINT ["python", "run.py"]

