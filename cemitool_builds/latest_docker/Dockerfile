FROM ubuntu:18.04
FROM conda/miniconda3:latest

RUN apt-get update && apt-get install -y r-base

RUN conda update -n base -c defaults conda

RUN conda install -c bioconda bedtools=2.29.2 bedops=2.4.39 tabix=0.2.6

RUN R -e "install.packages('bedr', repos='http://cran.us.r-project.org')"



FROM r-base:3.5.1
#FROM csblusp/cemitool

RUN apt-get update &&\
    apt-get install -y --no-install-recommends --allow-downgrades libssl-dev\
    libssh2-1-dev pandoc libcurl4=7.61.0-1 libcurl4-openssl-dev libxml2-dev\
    libudunits2-dev

RUN git clone --recursive https://github.com/csbl-usp/CEMiTool.git

ADD . /CEMiTool

WORKDIR /usr/local/bin

RUN ln -s /CEMiTool/R/cemitool.R .

WORKDIR /CEMiTool

RUN /usr/bin/Rscript docker/install-deps.R
