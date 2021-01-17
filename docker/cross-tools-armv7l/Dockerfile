FROM ubuntu

LABEL org.opencontainers.image.source https://github.com/tabjy/packages/tree/master/docker/cross-tools-armv7l

RUN mkdir -p /mnt/host \
    && apt update \
    && apt install -y gcc make cmake gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf \
    && apt clean

WORKDIR /mnt/host

USER 1001
