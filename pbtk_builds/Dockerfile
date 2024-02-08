# build minimap2-coverage
FROM continuumio/miniconda3

### Basic dependency ###
RUN apt-get clean all && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  \
    git \
    build-essential \
    libc6-dev \
    zlib1g-dev && \
    apt-get clean && \
    apt-get purge

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda install -y \
    python=3.9 \
    numpy \
    pandas'>=0.24.0' \
    scipy \
    jinja2 \
    h5py \
    matplotlib'>=2.1.2' \
    scikit-learn && \
    conda install -y -c bioconda \
    pbtk \
    edlib \
    pysam \
    python-edlib


RUN which pbtk
