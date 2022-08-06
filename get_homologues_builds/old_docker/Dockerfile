FROM csicunam/get_homologues:latest AS GETHOMOLOGUES

FROM ubuntu:18.04
FROM rstudio/r-base:3.6.3-bionic

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

COPY --from=GETHOMOLOGUES / .

# Install dependencies from repos: GD for graphics, libidn11 for BLAST+
RUN apt-get update && apt-get install -y \
  bash-completion \
  build-essential \
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
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Inline::C Inline::CPP

RUN cd get_homologues && echo "yes y | perl install.pl" > install.sh

RUN cd get_homologues && bash ./install.sh

# add version name to image
ARG version
LABEL version=$version
RUN echo $version

ENV PATH="/get_homologues:${PATH}"
ENV PATH="/get_phylomarkers:${PATH}"
