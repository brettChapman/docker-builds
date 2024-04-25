FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y \
    tzdata \
    autoconf \
    g++ \
    git \
    libreadline-dev \
    libtool \
    make

# OpenCL
RUN apt-get install -y \
    ocl-icd-opencl-dev \
    pocl-opencl-icd

# OpenMPI
RUN apt install -y \
    libopenmpi-dev

#RUN git clone --depth=1 https://github.com/NBISweden/MrBayes.git
#RUN cd MrBayes
#RUN ./configure
#RUN make && make install

RUN git clone --depth=1 --branch=develop https://github.com/NBISweden/MrBayes.git
RUN cd MrBayes && ./configure --with-mpi --disable-fma && make clean && make 
#--enable-doc=no && make
