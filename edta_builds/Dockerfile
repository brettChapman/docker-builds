FROM continuumio/miniconda3

RUN conda update -n base -c defaults conda

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        build-essential \
        make \
        && rm -rf /var/lib/apt/lists/*

RUN conda config --add channels anaconda --add channels conda-forge --add channels bioconda --add channels r
RUN conda install -c bioconda -c conda-forge -y edta

ENV TERM=xterm

RUN cd /opt/conda/share/RepeatMasker/ && perl ./configure -trfbin=`which trf` -hmmerbin=`which nhmmscan` -rmblastbin=`which rmblastn`

RUN (echo y;echo o conf prerequisites_policy follow;echo o conf commit)|cpan

RUN cpan Text::Soundex
