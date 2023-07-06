FROM ubuntu:22.04

#RUN sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends software-properties-common dirmngr wget
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

RUN apt-get update && apt-get install -y dialog apt-utils git systemd tzdata r-base r-base-dev \
        libssl-dev libssh2-1-dev pandoc libcurl4 libcurl4-openssl-dev libxml2-dev libudunits2-dev \
        default-jre openjdk-11-jre-headless openjdk-8-jre-headless default-jdk \
	&& rm -rf /var/lib/apt/lists/*

env TZ UTC

#COPY --from=DIAMOND /usr/local/bin/diamond /usr/local/bin/

WORKDIR /usr/local/bin/

RUN wget http://github.com/bbuchfink/diamond/releases/download/v2.1.8/diamond-linux64.tar.gz
RUN tar xzf diamond-linux64.tar.gz

WORKDIR /

#RUN chmod +x /usr/local/bin/diamond

RUN R -e "install.packages('docopt')"

RUN R -e "install.packages('data.table')"

#RUN R -e "install.packages('devtools')"

RUN R -e "install.packages('BiocManager')"

RUN R -e "BiocManager::install(c('Biostrings', 'rtracklayer'))"

#RUN R -e "devtools::install_deps(dep=TRUE)"


#RUN R -e "install.packages('devtools')"

#RUN R -e "install.packages('BiocManager')"

#RUN R -e "BiocManager::install(c('preprocessCore', 'impute'))
#RUN R -e "BiocManager::install(c('Biostrings', 'rtracklayer'))"

#RUN R -e "devtools::install_deps(dep=TRUE)"

#RUN R -e "library(devtools)"

#RUN R -e "devtools::install_github('jtlovell/GENESPACE')"

RUN R -e "install.packages('remotes')"

RUN R -e "remotes::install_github('jtlovell/GENESPACE')"

RUN wget https://github.com/davidemms/OrthoFinder/releases/latest/download/OrthoFinder.tar.gz && \      
        tar -xzf OrthoFinder.tar.gz && rm -dr OrthoFinder.tar.gz

RUN echo $PATH

ENV PATH="${PATH}:/OrthoFinder/"

RUN echo $PATH

#RUN export PATH="${PATH}:/OrthoFinder/"

RUN git clone --recursive https://github.com/wyp1125/MCScanX.git

WORKDIR /MCScanX

RUN make

WORKDIR /

#RUN git clone --recursive https://github.com/jtlovell/GENESPACE.git

#WORKDIR /GENESPACE

#RUN R -e "BiocManager::install(c('Biostrings', 'rtracklayer'))"

#docopt')"

#RUN /usr/bin/Rscript docker/install-deps.R 

#RUN R -e "library(devtools)"

#RUN R -e "devtools::install_github('jtlovell/GENESPACE', upgrade = F)"




#WORKDIR /CEMiTool

#RUN R -e "install.packages('docopt')"

#RUN /usr/bin/Rscript docker/install-deps.R 

#RUN R -e "library(devtools)"

#RUN R -e "devtools::install_github('brettChapman/CEMiTool')"
