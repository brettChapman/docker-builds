FROM ubuntu:18.04

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
        wget \
        unzip \
        gcc \ 
        build-essential \
        time \
        python \
        python-pip \
        python-setuptools \
        locales \
        make \
        python-dev \
        && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install awscli

RUN wget http://eddylab.org/software/hmmer/hmmer-3.3.tar.gz && \
        tar -xzf hmmer-3.3.tar.gz && \
        cd hmmer-3.3 && \
        ./configure && \
        make && \
        make install && \
        cd .. && rm -r hmmer-3.3 hmmer-3.3.tar.gz

WORKDIR /usr/local

RUN wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.10.1+-x64-linux.tar.gz && \
	tar -xzf ncbi-blast-2.10.1+-x64-linux.tar.gz

RUN wget http://www.repeatmasker.org/rmblast-2.10.0+-x64-linux.tar.gz && \
	tar -xzf rmblast-2.10.0+-x64-linux.tar.gz

RUN cp -R rmblast-2.10.0/* ncbi-blast-2.10.1+/

WORKDIR /usr/local/bin

RUN wget http://tandem.bu.edu/trf/downloads/trf409.linux64 && \
        mv trf*.linux64 trf && chmod +x trf

WORKDIR /usr/local

RUN wget http://repeatmasker.org/RepeatMasker-open-4-0-9-p2.tar.gz \
    && tar -xzvf RepeatMasker-open-*.tar.gz \
        && rm -f RepeatMasker-open-*.tar.gz

# WORKDIR /usr/local/RepeatMasker/Libraries

# RUN wget https://www.dfam.org/releases/Dfam_3.1/families/Dfam.hmm.gz \
#         && gunzip Dfam.hmm.gz

WORKDIR /usr/local/RepeatMasker

ENV TERM=xterm

RUN perl ./configure -trfbin=/usr/local/bin/trf -hmmerbin=`which nhmmscan` -rmblastbin=/usr/local/ncbi-blast-2.10.1+/bin/ -defaultengine=hmmer
#-hmmerbin=`which nhmmscan` -rmblastbin=/usr/local/ncbi-blast-2.10.1+/bin/
# -rmblastbin=/usr/local/ncbi-blast-2.10.1+/bin -defaultengine=hmmer

RUN cpan Text::Soundex

ENV PATH=/usr/local/RepeatMasker:$PATH

WORKDIR /home
