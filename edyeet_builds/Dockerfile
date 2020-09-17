FROM ubuntu:18.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update && apt-get install -y \
  dialog \
  apt-utils \
  wget \
  unzip \
  gcc \
  build-essential \
  git \
  autoconf \
  gsl-bin \
  libgsl-dev \
  zlib1g-dev \
  locales \
  make \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/ekg/edyeet.git

RUN cd edyeet && ./bootstrap.sh && ./configure --prefix=/usr/local/bin/ && make

ENV PATH="/edyeet:${PATH}"
