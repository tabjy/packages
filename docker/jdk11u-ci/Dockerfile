FROM ubuntu:22.04

LABEL org.opencontainers.image.source https://github.com/tabjy/packages/tree/master/docker/jdk11u-ci

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --only-upgrade apt && \
    apt-get install -y gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev wget unzip file zip openjdk-11-jdk libfontconfig-dev libffi-dev gdbserver && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 --slave /usr/bin/g++ g++ /usr/bin/g++-10 && \
    apt clean && \
    wget https://builds.shipilev.net/jtreg/master.zip && \
    unzip -d /opt master.zip && \
    rm master.zip

ENV JTREG_HOME=/opt/jtreg

WORKDIR /app
