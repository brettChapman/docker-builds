FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qy dialog apt-utils texlive-latex-base \
	texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra \
	bcftools python3-pip python3-distutils python3-dev && rm -rf /var/lib/apt/lists/*

RUN pip3 install matplotlib 
