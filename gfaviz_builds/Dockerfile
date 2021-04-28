FROM debian:bullseye-slim AS binary

RUN apt-get update \
    && apt-get install -y \
                       git \
                       bash \
                       cmake \
                       make \
                       g++ \
                       python3-dev \
                       bc \
                       libatomic-ops-dev

RUN git clone https://github.com/ggonnella/gfaviz
RUN cd gfaviz && qmake-qt5 && make
