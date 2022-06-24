FROM ttbb/base:jdk17

WORKDIR /opt/sh

ARG version=0.11.0

RUN wget https://github.com/pravega/pravega/releases/download/v$version/pravega-$version.tgz  && \
mkdir -p /opt/sh/pravega && \
tar -xf pravega-$version.tgz -C /opt/sh/pravega --strip-components 1 && \
rm -rf pravega-$version.tgz

WORKDIR /opt/sh/pravega