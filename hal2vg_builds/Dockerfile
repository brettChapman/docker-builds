# build on compatible vg image for dependencies
FROM quay.io/vgteam/vg:v1.27.0

WORKDIR /

#Remove the uncessary /vg unless intending to use the image for vg and hal2vg
RUN rm -dr /vg

# update system and install dependencies not present in vg image
RUN apt-get -qq update && apt-get -qq install -y \
  libhdf5-dev \
  build-essential \
  python3-dev \
  python3-pip \
  cmake \
  make \
  libz-dev \
  pkg-config \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/glennhickey/hal2vg.git --recursive

RUN cd /hal2vg && make

ENV PATH="/hal2vg:/hal2vg/deps/hal/bin:${PATH}"
