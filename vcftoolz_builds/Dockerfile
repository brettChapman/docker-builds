FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qy dialog apt-utils \
        python3-pip python3-distutils python3-dev && rm -rf /var/lib/apt/lists/*

RUN pip3 install vcftoolz
