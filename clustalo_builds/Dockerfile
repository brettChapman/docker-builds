#FROM biocontainers/biocontainers:latest
FROM ubuntu:20.04

#USER root

RUN apt-get update && apt-get install -y \
  	clustalo && \
  	apt-get clean && \
  	apt-get purge && \
  	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#USER biodocker
