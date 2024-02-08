FROM r-base:4.3.2

RUN Rscript -e "update.packages(ask=F); install.packages('BiocManager')"

RUN Rscript -e "BiocManager::install('DESeq2', dependencies = TRUE)"
