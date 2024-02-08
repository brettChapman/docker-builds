FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get -y upgrade && apt-get install -y \
    build-essential \
    bzip2 \
    cmake \
    default-jdk \
    git \
    libnss-sss \
    libtbb2 \
    libtbb-dev \
    ncurses-dev \
    python3-dev \
    python3-pip \
    genometools \
    tzdata \
    unzip \
    wget \
    zlib1g \
    zlib1g-dev && \
    apt-get clean && apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*       
