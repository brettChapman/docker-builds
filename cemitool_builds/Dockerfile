FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y dialog apt-utils git r-base r-base-dev \
	libssl-dev libssh2-1-dev pandoc libcurl4 libcurl4-openssl-dev libxml2-dev libudunits2-dev \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/csbl-usp/CEMiTool.git

#WORKDIR /usr/local/bin

#RUN cp /CEMiTool/R/*.R .

WORKDIR /CEMiTool

RUN R -e "install.packages('docopt')"

RUN /usr/bin/Rscript docker/install-deps.R 

#RUN R -e "install.packages('docopt')"

#RUN R -e "install.packages('devtools')"

RUN R -e "library(devtools)"

RUN R -e "devtools::install_github('csbl-usp/CEMiTool')"

#RUN R -e "install.packages(c('BiocManager', 'httr', 'europepmc'))"

#RUN R -e "BiocManager::install('CEMiTool')"
