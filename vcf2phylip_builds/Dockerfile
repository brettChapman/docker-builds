FROM ubuntu:23.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qy dialog apt-utils git \
        python3-pip python3-distutils python3-dev && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/edgardomortiz/vcf2phylip
