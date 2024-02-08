FROM r-base:4.3.2

RUN Rscript -e "update.packages(ask=F); install.packages('BiocManager')"

RUN Rscript -e "install.packages('jsonlite', dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN Rscript -e "BiocManager::install('tximport')"
