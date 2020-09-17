FROM ubuntu:18.04
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

SHELL ["/bin/bash", "-c"]

RUN apt-get update -y && apt-get install -y \
    git \
    wget \
    build-essential \
    make \
    && rm -rf /var/lib/apt/lists/*

RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 

RUN git clone https://github.com/maickrau/GraphAligner.git

RUN cd GraphAligner && git submodule update --init --recursive

RUN cd GraphAligner && \
    conda env create -f CondaEnvironment.yml && \
    source activate GraphAligner && \
    make bin/GraphAligner

ENV PATH="/GraphAligner/bin:${PATH}"
    
