FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends software-properties-common dirmngr wget
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

RUN apt-get update && apt-get install -y dialog apt-utils git systemd tzdata r-base r-base-dev \
        libssl-dev libssh2-1-dev pandoc libcurl4 libcurl4-openssl-dev libxml2-dev libudunits2-dev \
        default-jre openjdk-11-jre-headless openjdk-8-jre-headless default-jdk bcftools \
	&& rm -rf /var/lib/apt/lists/*

env TZ UTC

RUN R -e "install.packages('data.table')"

#RUN R -e "install.packages('devtools')"

RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('petrelharp/local_pca/lostruct')"

#https://github.com/petrelharp/local_pca/tree/master/lostruct

#RUN R -e "devtools::install_github('petrelharp/local_pca/lostruct')"
