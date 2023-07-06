FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN sed -i -r 's/([a-z]{2}.)?archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN sed -i -r 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends software-properties-common dirmngr wget
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

RUN apt-get update && apt-get install -y dialog apt-utils git systemd tzdata r-base r-base-dev \
        libssl-dev libssh2-1-dev pandoc libcurl4 libcurl4-openssl-dev libxml2-dev libudunits2-dev bcftools \
        && rm -rf /var/lib/apt/lists/*

#RUN wget https://www.picb.ac.cn/evolgen/softwares/download/FastEPRR/FastEPRR2.0/FastEPRR_2.0.tar.gz

RUN wget https://www.picb.ac.cn/evolgen/softwares/download/FastEPRR/FastEPRR1.0/FastEPRR_1.0.tar.gz

RUN R -e "install.packages('FastEPRR_1.0.tar.gz', repos = NULL, type = 'source')"

RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('mboost')"
#RUN R -e "install.packages('ggplot2')"
#RUN R -e "install.packages('tidyr')"
