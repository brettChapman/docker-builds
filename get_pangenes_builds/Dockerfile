#FROM csicunam/get_homologues:latest AS GETHOMOLOGUES

FROM ubuntu:22.04
#FROM rstudio/r-base:4.3.2-opensuse154

ARG DEBIAN_FRONTEND=noninteractive

#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

#COPY --from=base / .

#COPY --from=GETHOMOLOGUES / .

# Install dependencies from repos: GD for graphics, libidn11 for BLAST+
RUN apt-get update && apt-get install -y \
  bash-completion \
  build-essential \
  bc \
  curl \
  git \
  htop \
  python3-pip \
  libgd-gd2-perl \
  libpython2.7 \
  procps \
  wget \
  && rm -rf /var/lib/apt/lists/*

#RUN wget http://mirrors.kernel.org/ubuntu/pool/main/libi/libidn/libidn11_1.33-2.2ubuntu2_amd64.deb
#RUN apt-get install ./libidn11_1.33-2.2ubuntu2_amd64.deb

#RUN curl -L http://cpanmin.us | perl - App::cpanminus
#RUN cpanm Inline::C Inline::CPP

#RUN cd get_homologues && echo "yes y | perl install.pl" > install.sh

#RUN cd get_homologues && bash ./install.sh

#RUN mv get_homologues old_get_homologues

#RUN git clone https://github.com/eead-csic-compbio/get_homologues.git

#copying DB from old version because new version has a bug downloading Swissprot and installing
#RUN cp old_get_homologues/db/* get_homologues/db/

#RUN cd get_homologues && echo "yes y | perl install.pl" > install.sh

#RUN cd get_homologues && bash ./install.sh

#RUN rm -dr old_get_homologues

RUN git clone https://github.com/Ensembl/plant-scripts.git

WORKDIR /plant-scripts

RUN make install

RUN make install_REST

#RUN make install_ensembl

RUN Rscript install_R_deps.R

RUN make install_repeats

RUN make install_pangenes

RUN make install_gsalign
RUN make install_pangenes_quality

WORKDIR /

# add version name to image
#ARG version
#LABEL version=$version
#RUN echo $version

#ENV PATH="/get_homologues:${PATH}"
#ENV PATH="/get_phylomarkers:${PATH}"
ENV PATH="/plant-scripts:${PATH}"
