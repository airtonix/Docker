FROM maxexcloo/arma3

MAINTAINER Zenobius Jiricek <airtonix@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV BUILD_DATE 2014-12-08T09:07:17

ENV REDIS_HOST db
ENV REDIS_PASSWORD ''
ENV REDIS_DB 0

# TODO: wget epoch server files
# TODO: link to redis
# TODO: discover errors due to assumptions

RUN apt-get install nodejs npm -y
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
RUN npm install coffee-script requestify async 