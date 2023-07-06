FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive 
LABEL version="0.1.0"
LABEL description="gfaestus"
WORKDIR /opt
RUN apt-get update
RUN apt-get -y install build-essential curl wget git libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev \ 
&& wget -qO - http://packages.lunarg.com/lunarg-signing-key-pub.asc | apt-key add - \
&& wget -qO /etc/apt/sources.list.d/lunarg-vulkan-bionic.list http://packages.lunarg.com/vulkan/lunarg-vulkan-bionic.list \
&& apt-get update \
&& apt-get install -y apt vulkan-sdk \
&& apt-get -y clean all \
&& rm -rf /var/cache
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN git clone --recursive https://github.com/chfi/gfaestus.git \
&& cd gfaestus \
&& git checkout dev \
&& RUST_BACKTRACE=full cargo build --release
