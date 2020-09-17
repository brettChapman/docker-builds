FROM ubuntu:18.04
FROM conda/miniconda3:latest

RUN apt-get update && apt-get install -y r-base

RUN conda update -n base -c defaults conda

RUN conda install -c bioconda bedtools=2.29.2 bedops=2.4.39 tabix=0.2.6

RUN R -e "install.packages('bedr', repos='http://cran.us.r-project.org')"
