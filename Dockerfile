FROM ubuntu:latest
LABEL maintainer="lonlac@cril.fr"

RUN apt-get -y update && apt-get install -y g++-4.9 \
    zlib1g-dev \
    build-essential \
    wget \
    zip

RUN wget http://fmv.jku.at/lingeling/lingeling-bbc-9230380-160707.tar.gz
RUN tar -xvzf lingeling-bbc-9230380-160707.tar.gz
RUN ls
RUN cd lingeling-bbc-9230380-160707 && ./configure.sh && make

ENTRYPOINT ["lingeling-bbc-9230380-160707/plingeling"]
