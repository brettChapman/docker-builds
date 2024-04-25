FROM ubuntu:xenial

RUN apt-get update && apt-get install -y python \
  curl\
  bzip2

RUN curl -L https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 | tar -jxvf -

ENV PATH="${PATH}:/minimap2-2.17_x64-linux"
WORKDIR /data
