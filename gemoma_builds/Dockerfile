FROM quay.io/biocontainers/gemoma:1.9--hdfd78af_0 AS GEMOMA

FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

COPY --from=GEMOMA /usr/local/bin/mmseqs /usr/local/bin/

COPY --from=GEMOMA /usr/local/share/gemoma-1.9-0/ /usr/local/share/gemoma-1.9-0/

RUN apt-get update && apt-get install -qy python3-pip python3-distutils python3-dev python-is-python3 default-jre && rm -rf /var/lib/apt/lists/*

ENV PATH=/usr/local/share/gemoma-1.9-0:${PATH}

RUN which mmseqs
RUN which GeMoMa

RUN chmod -R 777 /usr/local/share/gemoma-1.9-0/
