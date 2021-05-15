FROM centminmod/docker-ubuntu-vnc-desktop

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get update && apt-get install -y software-properties-common \
    && apt-get install -y --no-install-recommends software-properties-common curl
RUN apt-get update && apt-get install -y --no-install-recommends --allow-unauthenticated \
  cmake \
  build-essential \
  git \
  libjpeg-dev \
  libopenscenegraph-dev \
  libqt4-dev \
  libqt4-opengl-dev \
  && apt-get autoclean \
  && apt-get autoremove \
  && rm -rf /var/lib/apt/lists/*

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN mkdir /src && \
  git clone --recursive https://github.com/mattjr/benthicQT.git /src/benthic_qt && \
  mkdir -p /src/benthic_qt/build
WORKDIR /src/benthic_qt/build
RUN cmake -DCMAKE_BUILD_TYPE=Release .. && make install
#WORKDIR /src/benthic_qt/bin
#CMD ./benthicQT
ADD image /
ENTRYPOINT ["/startup.sh"]
