FROM continuumio/miniconda3:23.5.2-0
ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-c"]

RUN apt-get update -qy
RUN apt-get install -y gcc git build-essential
RUN apt-get install -y python3-dev libxml2-dev libxslt-dev git
RUN apt-get install -y libncurses-dev libcurl4-openssl-dev zlib1g-dev
RUN apt-get install -y vcftools python3-pip
RUN apt-get install -y libblas-dev liblapack-dev libatlas-base-dev gfortran
RUN apt-get install -y wget autoconf libssl-dev

#RUN pip install boto3 awscli
#RUN pip install pyfaidx pyliftover
#RUN pip install cython
#RUN pip install pandas
#RUN pip install scipy

# GRABSEEDS dependencies
# <https://github.com/tanghaibao/jcvi/wiki/GRABSEEDS%3A-How-to-install>
#RUN apt-get install -y libxft-dev libfreetype6 libfreetype6-dev
#RUN apt-get install -y libmagickwand-dev
#RUN apt-get install -y texlive texlive-latex-extra texlive-latex-recommended cm-super
#RUN apt-get install -y dvipng

RUN git clone https://github.com/KalinNonchev/gnomAD_DB.git

RUN pip install git+https://github.com/KalinNonchev/gnomAD_DB.git

WORKDIR /gnomAD_DB

RUN sed -i 's/Grch37/Grch38/g' script_config.yaml

RUN conda upgrade conda -q -y

RUN conda update conda -q -y

RUN conda install -c conda-forge ipykernel

RUN conda env create -f environment.yaml

RUN conda init bash

WORKDIR /

RUN . /root/.bashrc

RUN . /opt/conda/etc/profile.d/conda.sh

WORKDIR /gnomAD_DB

RUN source activate gnomad_db

RUN python -m ipykernel install --user --name gnomad_db --display-name "gnomad_db"

ENV PATH=/gnomAD_DB:${PATH}

WORKDIR /

# https://github.com/tanghaibao/jcvi/issues/307
#RUN apt install curl

# Install jcvi
# https://github.com/tanghaibao/jcvi/issues/509

#RUN git clone https://github.com/hillerlab/GenomeAlignmentTools.git

#RUN cd GenomeAlignmentTools/kent/src && make

#ENV PATH=/GenomeAlignmentTools/kent/bin:${PATH}

#WORKDIR /

#RUN git clone git://github.com/tanghaibao/jcvi.git
#RUN cd jcvi && pip install -e .

#RUN pip install jcvi
