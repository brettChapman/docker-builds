FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  dialog \
  apt-utils \
  build-essential \
  cmake \
  libssl-dev \
  libffi-dev \
  python3-distutils \
  python3-dev \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/ekg/smoothxg.git

RUN cd smoothxg && cmake -H. -Bbuild && cmake --build build -- -j 4

ENV PATH="/smoothxg/bin:${PATH}"
