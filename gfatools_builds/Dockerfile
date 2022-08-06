FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y dialog apt-utils git wget make gcc zlib1g-dev \
        && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/lh3/gfatools
RUN cd gfatools && make

ENV PATH=/gfatools/:$PATH
