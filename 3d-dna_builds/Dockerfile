FROM quay.io/biocontainers/3d-dna:201008--hdfd78af_0 AS 3DDNA

FROM ubuntu:21.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

COPY --from=3DDNA / .

# Install dependencies from repos: GD for graphics, libidn11 for BLAST+
RUN apt-get update && apt-get install -y \
  bash-completion \
  build-essential \
  ca-certificates \
  libglib2.0-0 \
  libsm6 \
  libxrender1 \
  bc \
  curl \
  git \
  htop \
  libgd-gd2-perl \
  libidn11 \
  libpython2.7 \
  procps \
  wget \
  && rm -rf /var/lib/apt/lists/*

# Use the above args
ARG CONDA_VER
ARG OS_TYPE
# Install miniconda to /miniconda
RUN curl -LO "http://repo.continuum.io/miniconda/Miniconda3-${CONDA_VER}-Linux-${OS_TYPE}.sh"
RUN bash Miniconda3-${CONDA_VER}-Linux-${OS_TYPE}.sh -p /miniconda -b
RUN rm Miniconda3-${CONDA_VER}-Linux-${OS_TYPE}.sh
ENV PATH=/miniconda/bin:${PATH}
RUN conda config --add channels defaults
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda
RUN conda update conda
RUN conda update -y conda
RUN conda init

# install 3d-dna dependecies
RUN conda install lastz=1.0.4
RUN conda install openjdk=8.0.152
RUN conda install gawk=4.2.1
RUN conda install coreutils=8.30
RUN conda install parallel=20180522
RUN conda install python=2.7
RUN conda install numpy=1.15.1
RUN conda install scipy=1.1.0
RUN conda install matplotlib=2.2.3

RUN git clone clone https://github.com/theaidenlab/3d-dna.git

ENV PATH=/opt/conda/bin:$PATH
