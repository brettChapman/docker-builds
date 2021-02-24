FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential \
    bzip2 \
    cmake \
    default-jdk \
    git \
    libnss-sss \
    libtbb2 \
    libtbb-dev \
    ncurses-dev \
    python3-dev \
    python3-pip \
    tzdata \
    unzip \
    wget \
    zlib1g \
    zlib1g-dev

ENV star_version 2.7.8a

RUN wget https://github.com/alexdobin/STAR/archive/${star_version}.tar.gz && \
	tar -xzf ${star_version}.tar.gz && \
	cp STAR-${star_version}/bin/Linux_x86_64/* /usr/local/bin && \
	rm -dr STAR-${star_version} ${star_version}.tar.gz && \
	apt-get clean && apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
