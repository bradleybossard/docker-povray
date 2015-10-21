FROM ubuntu:14.04
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

RUN apt-get update

RUN apt-get install -y git \
build-essential \
libboost-dev \
zlib1g-dev \
libpng12-dev \
libjpeg8-dev \
libtiff5-dev \
autoconf \
libopenexr-dev \
libboost-all-dev

RUN git clone https://github.com/POV-Ray/povray.git
WORKDIR /povray/unix
RUN ./prebuild.sh
WORKDIR /povray
RUN ./configure COMPILED_BY="Bradley Bossard <bradleybossard@gmail.com>"

RUN make
RUN make install
