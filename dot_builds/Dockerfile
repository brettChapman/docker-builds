FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qy 
RUN apt-get upgrade -qy

#RUN apt-get install -y build-essential wget git python3-pip \
#	bash cmake make g++ python3-dev bc libatomic-ops-dev \
#	libncurses5-dev zlib1g-dev libbz2-dev autoconf libgsl-dev \
#	liblzma-dev libcurl3-dev graphviz ttf-dejavu openjdk-11-jdk \
#	dirmngr gnupg apt-transport-https ca-certificates software-properties-common && \
#	apt-get clean && apt-get purge && \
#	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get install -qy python3-pip python3-pydot graphviz

RUN pip3 install pydot_ng 


#RUN apt-get install -y build-essential graphviz pydot
#\
#       bash cmake make g++ python3-dev bc libatomic-ops-dev \
#       libncurses5-dev zlib1g-dev libbz2-dev autoconf libgsl-dev \
#       liblzma-dev libcurl3-dev graphviz ttf-dejavu openjdk-11-jdk \
#       dirmngr gnupg apt-transport-https ca-certificates software-properties-common && \
#       apt-get clean && apt-get purge && \
#       rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

