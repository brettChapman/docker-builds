FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  dialog \
  apt-utils \
  build-essential \
  gsl-bin \
  libgsl-dev \
  cmake \
  python3-distutils \
  python3-dev \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/ekg/edyeet.git

RUN cd edyeet && cmake -H. -Bbuild && cmake --build build -- -j 16

RUN mv /edyeet/build/bin/edyeet /edyeet

RUN rm -dr /edyeet/build

ENV PATH="/edyeet:${PATH}"
