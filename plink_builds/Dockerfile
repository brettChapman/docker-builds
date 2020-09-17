FROM ubuntu:18.04

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        unzip \
        gcc \ 
        build-essential \
        time \
        python \
        python-pip \
        python-setuptools \
        locales \
        make \
        python-dev \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local

RUN wget http://s3.amazonaws.com/plink2-assets/plink2_linux_x86_64_20200725.zip && \
    unzip plink2_linux_x86_64_20200725.zip && \
    rm -f plink2_linux_x86_64_20200725.zip

ENV PATH=/usr/local/:$PATH

WORKDIR /home
