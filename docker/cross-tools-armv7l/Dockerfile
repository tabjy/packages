FROM ubuntu

LABEL org.opencontainers.image.source https://github.com/tabjy/packages/tree/master/docker/cross-tools-armv7l

WORKDIR /app

RUN apt update \
    && apt install -y gcc make gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf \
    && apt clean
