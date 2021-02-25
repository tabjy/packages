FROM ubuntu

LABEL org.opencontainers.image.source https://github.com/tabjy/packages/tree/master/docker/cross-tools-armv7l

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /mnt/host \
    && apt update \
    && apt install -y gcc make cmake gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf gdb gdb-multiarch \
    && apt clean

WORKDIR /mnt/host

USER 1001
