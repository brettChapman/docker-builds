FROM ubuntu:22.04

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
	wget \
        unzip \
	gzip \
        gcc \ 
        build-essential \
        time \
        python3-dev \
        python3-pip \
	python3-distutils \
        locales \
        make \
        && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install awscli

RUN pip install h5py

RUN wget http://eddylab.org/software/hmmer/hmmer-3.4.tar.gz && \
        tar -xzf hmmer-3.4.tar.gz && \
        cd hmmer-3.4 && \
        ./configure && \
        make && \
        make install && \
        cd .. && rm -r hmmer-3.4 hmmer-3.4.tar.gz

WORKDIR /usr/local

RUN wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.14.1/ncbi-blast-2.14.1+-src.tar.gz && \
	tar -xzf ncbi-blast-2.14.1+-src.tar.gz


RUN wget https://www.repeatmasker.org/rmblast/isb-2.14.1+-rmblast.patch.gz && \
	gunzip isb-2.14.1+-rmblast.patch.gz

RUN cd ncbi-blast-2.14.1+-src && patch -p1 < ../isb-2.14.1+-rmblast.patch

WORKDIR /usr/local

RUN wget http://www.repeatmasker.org/rmblast/rmblast-2.14.1+-x64-linux.tar.gz && \
	tar -xzf rmblast-2.14.1+-x64-linux.tar.gz

RUN cp -R rmblast-2.14.1/* ncbi-blast-2.14.1+-src

WORKDIR /usr/local/bin

RUN wget https://github.com/Benson-Genomics-Lab/TRF/releases/download/v4.09.1/trf409.linux64 && \
	mv trf*.linux64 trf && chmod +x trf

WORKDIR /usr/local

RUN wget https://www.repeatmasker.org/RepeatMasker/RepeatMasker-4.1.6.tar.gz \
    && tar -xzvf RepeatMasker-4.1.6.tar.gz \
        && rm -f RepeatMasker-4.1.6.tar.gz

#WORKDIR /usr/local/RepeatMasker/Libraries

#RUN wget https://www.dfam.org/releases/Dfam_3.1/families/Dfam.hmm.gz \
#         && gunzip Dfam.hmm.gz

#If docker image size larger, can download FamDB
RUN wget https://www.dfam.org/releases/Dfam_3.8/families/FamDB/dfam38_full.0.h5.gz

RUN gunzip dfam38_full.0.h5.gz

RUN mv dfam38_full.0.h5 /usr/local/RepeatMasker/Libraries/famdb

WORKDIR /usr/local/RepeatMasker

ENV TERM=xterm

RUN perl ./configure -trf_prgm=/usr/local/bin/trf -hmmer_dir=`which nhmmscan` -rmblast_dir=/usr/local/ncbi-blast-2.14.1+-src/bin/ -default_search_engine=hmmer
#-hmmerbin=`which nhmmscan` -rmblastbin=/usr/local/ncbi-blast-2.10.1+/bin/
# -rmblastbin=/usr/local/ncbi-blast-2.10.1+/bin -defaultengine=hmmer

RUN cpan Text::Soundex

ENV PATH=/usr/local/RepeatMasker:$PATH

WORKDIR /home
