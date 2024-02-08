FROM ubuntu:22.04
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get install -y build-essential git ssh curl clang-14 cmake libssl-dev libssl3 pkg-config xorg libx11-dev libx11-6 libxau-dev libxcursor-dev libxrandr2 libxi6
SHELL [ "/bin/bash", "-c" ]
ENV SHELL=/bin/bash
RUN mkdir -p /opt
ENV RUSTUP_HOME=/opt/rustup
ENV CARGO_HOME=/opt/cargo
RUN RUSTUP_HOME=${RUSTUP_HOME} CARGO_HOME=${CARGO_HOME} bash -c "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y"
RUN . /opt/cargo/env && rustup default stable
RUN . /opt/cargo/env && cargo install --locked maturin
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
RUN . /opt/cargo/env && rustup toolchain list
ENV PATH=/opt/cargo/bin/:${PATH}
RUN git clone --recursive https://github.com/chfi/waragraph.git
RUN cd waragraph && cargo build --release
ENV PATH=/waragraph/target/release:${PATH}
