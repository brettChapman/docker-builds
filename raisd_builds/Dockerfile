FROM ubuntu:23.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    wget \
    unzip \
    autoconf \
    g++ \
    gcc \
    build-essential \
    libgsl-dev \
    libreadline-dev \
    libtool \
    make

RUN apt-get install -yqq --no-install-recommends software-properties-common dirmngr wget
#RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
#RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

RUN apt-get update && apt-get install -y dialog apt-utils git systemd tzdata r-base r-base-dev 

RUN mkdir RAiSD

WORKDIR RAiSD

RUN wget https://github.com/alachins/raisd/archive/master.zip
RUN unzip master.zip

RUN cd raisd-master && bash ./install-RAiSD.sh

RUN cd /usr/local/bin/ && ln -s /RAiSD/raisd-master/bin/release/RAiSD .

WORKDIR /
