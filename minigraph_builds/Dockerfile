FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  dialog \
  apt-utils \
  build-essential \
  cmake \
  python3-distutils \
  python3-dev \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/lh3/minigraph.git

RUN cd minigraph && make

ENV PATH="/minigraph:${PATH}"
