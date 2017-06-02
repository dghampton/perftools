FROM debian:jessie-slim

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y \
    apache2-utils \
    bash \
    build-essential \
    curl \
    git \
    libssl-dev \
    vim 

RUN apt-get clean

ENV SHELL /bin/bash

RUN git clone https://github.com/wg/wrk.git /wrk

RUN cd /wrk && \
    make

RUN cp /wrk/wrk /usr/local/bin && \
    rm -rf /wrk

WORKDIR /home

COPY scripts/ /home/