FROM debian:jessie

WORKDIR /opt

ENV VERSION 2.4.3

RUN apt-get update && apt-get install -y \
    git \
    openjdk-7-jdk \
    python2.7 \
    python3 \
    python3-pip \
    python-pip \
    protobuf-compiler \
    android-tools-adb

RUN git clone https://github.com/mwrlabs/drozer

WORKDIR /opt/drozer

RUN apt-get install -y python-protobuf \
    python-openssl \
    python-yaml \
    python-twisted \
    python-dev

RUN make deb
RUN dpkg -i dist/drozer_${VERSION}.deb

ENTRYPOINT drozer 
