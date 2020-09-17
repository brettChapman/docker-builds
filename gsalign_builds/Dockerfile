FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y gnuplot

COPY --from=quay.io/biocontainers/gsalign:1.0.22--hdb83ec4_0 /usr/local/bin/* /usr/local/bin/
