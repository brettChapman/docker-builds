FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  dialog \
  apt-utils \
  build-essential \
  cmake \
  python3-distutils \
  python3-dev \
  libjemalloc-dev \
  pkg-config \
  cmake-data \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/pangenome/odgi.git

RUN cd odgi && cmake -H. -Bbuild && cmake --build build -- -j 3

ENV PATH="/odgi/bin:${PATH}"
