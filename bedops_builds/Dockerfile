# work from latest LTS ubuntu release
FROM ubuntu:18.04

# set environment variables
ENV bedops_version 2.4.41

# Install dependencies
RUN apt-get update -y && apt-get install -y \
    build-essential \
    libnss-sss \
    vim \
    wget \
    curl \
    libc6-dev \
    less \
    unzip

# install bedops
WORKDIR /usr/local/bin
RUN curl -SL https://github.com/bedops/bedops/archive/v${bedops_version}.tar.gz \
    > v${bedops_version}.tar.gz
RUN tar -xzvf v${bedops_version}.tar.gz
WORKDIR /usr/local/bin/bedops-${bedops_version}
RUN make all
RUN make install_all
RUN cp /usr/local/bin/bedops-${bedops_version}/bin/* /usr/local/bin/
WORKDIR /usr/local/bin

# default command
CMD ["bedops"]
