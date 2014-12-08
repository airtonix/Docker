FROM maxexcloo/ubuntu

MAINTAINER Zenobius Jiricek <airtonix@gmail.com>

ENV BUILD_DATE 2014-12-06T11:02:31
ENV DEBIAN_FRONTEND noninteractive
ENV STEAM_CMD_URL http://media.steampowered.com/installer/steamcmd_linux.tar.gz

RUN adduser steam --system && \
    addgroup steam

RUN apt-get update && \
    apt-get install -y lib32gcc1 build-essential curl

RUN mkdir /opt/steam -p

WORKDIR  /opt/steam

RUN curl -s ${STEAM_CMD_URL} | tar -xz && \
	chmod +x steamcmd.sh && \
	chown steam:steam ./ -R

RUN ./steamcmd.sh +quit