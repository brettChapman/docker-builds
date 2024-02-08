FROM r-base:4.3.2

RUN apt-get update && apt-get install -y uuid-dev \
  && rm -rf /var/lib/apt/lists/*

RUN Rscript -e "update.packages(ask=F); install.packages('rMVP')"
