FROM ubuntu:latest

# Set the working directory to /home
WORKDIR /home

#set User ROOT
USER root

# config issues about region and time 
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update -y \
	&& apt-get install -y --no-install-recommends \
	build-essential \
	software-properties-common \
	apt-utils \
	nano \
	git \
 	unzip \
  	wget \   
	locales \
	&& locale-gen en_US.UTF-8 \
	&& wget -O subread.tar.gz https://sourceforge.net/projects/subread/files/subread-2.0.6/subread-2.0.6-Linux-x86_64.tar.gz \
	&& tar zxvf subread.tar.gz \
	&& rm subread.tar.gz \
	&& ln -sf /home/subread-2.0.6-Linux-x86_64/bin/* /usr/local/bin/
