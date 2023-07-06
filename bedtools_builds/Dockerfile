FROM biocontainers/biocontainers:latest

################## METADATA ######################

LABEL base.image="biocontainers:latest"
LABEL version="2"
LABEL software="bedtools"
LABEL software.version="2.25.0"
LABEL about.summary="a powerful toolset for genome arithmetic"
LABEL about.home="http://bedtools.readthedocs.io/en/latest/"
LABEL about.documentation="http://quinlanlab.org/tutorials/bedtools/bedtools.html"
LABEL license="https://github.com/arq5x/bedtools2/blob/master/LICENSE"
LABEL about.tags="Genomics"

################## MAINTAINER ######################
MAINTAINER Saulo Alves Aflitos <sauloal@gmail.com>

RUN conda install -c bioconda bedtools

WORKDIR /data/

CMD ["bedtools"]

