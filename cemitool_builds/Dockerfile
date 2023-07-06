FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends software-properties-common dirmngr wget
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

RUN apt-get update && apt-get install -y dialog apt-utils git systemd tzdata r-base r-base-dev \
        libssl-dev libssh2-1-dev pandoc libcurl4 libudunits2-dev libfontconfig1-dev libcurl4-openssl-dev libxml2-dev libudunits2-dev \
        && rm -rf /var/lib/apt/lists/*

env TZ UTC

RUN git clone --recursive https://github.com/brettChapman/CEMiTool.git

WORKDIR /CEMiTool

RUN R -e "install.packages('docopt')"

RUN /usr/bin/Rscript docker/install-deps.R 

RUN R -e "library(remotes)"

RUN R -e "remotes::install_github('brettChapman/CEMiTool')"
