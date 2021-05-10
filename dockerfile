FROM ubuntu:14.04

RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y \
  cmake \
  build-essential \
  git \
  libjpeg-dev \
  libopenscenegraph-dev \
  libqt4-dev \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /src && \
  git clone --recursive https://github.com/mattjr/benthicQT.git /src/benthic_qt && \
  mkdir -p /src/benthic_qt/build
WORKDIR /src/benthic_qt/build
RUN cmake -DCMAKE_BUILD_TYPE=Release .. && make install
WORKDIR /src/benthic_qt/bin
CMD ./benthicQT
