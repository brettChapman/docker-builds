FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y dialog apt-utils git python3-dev python3-pip \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/CGATOxford/UMI-tools.git

WORKDIR /UMI-tools

RUN python3 setup.py install
