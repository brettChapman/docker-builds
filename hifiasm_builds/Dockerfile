FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y build-essential git make gcc zlib1g zlib1g-dev \
        && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/chhylp123/hifiasm
RUN cd hifiasm && make

ENV PATH="/hifiasm:${PATH}"
