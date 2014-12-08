FROM maxexcloo/steam

MAINTAINER Zenobius Jiricek <airtonix@gmail.com>

ENV BUILD_DATE 2014-12-06T13:33:59
ENV DEBIAN_FRONTEND noninteractive
ENV STEAM_APPID 233780
ENV STEAM_USER anonymous
ENV STEAM_PASS ''
ENV STEAM_COLLECTION_ID false
ENV STEAM_APIKEY false

ENV ARMA3_SERVER_NAME default
ENV ARMA3_SERVER_PORT 2302
ENV ARMA3_SERVER_ROOT /opt/arma3 
ENV ARMA3_SERVER_BINARY ${ARMA3_SERVER_ROOT}/arma3server 
ENV ARMA3_SERVER_CONFIG /data/config/server.cfg
ENV ARMA3_BATTLEYE_PATH /data/battleeye
ENV ARMA3_PROFILES_PATH /data/profiles
ENV ARMA3_WORLD_CONFIG /data/config/world.cfg
ENV ARMA3_LOGFILE /data/logs/epoch3.log
ENV ARMA3_MODLIST ""
ENV ARMA3_CPUCORES 2
ENV ARMA3_THREADS 2
ENV ARMA3_MAXMEM 2048

# Install required packages
RUN apt-get update && \
	apt-get install -y lib32stdc++6

# add bootup config
ADD config /config
ADD bin /usr/bin
ADD /etc/supervisord.conf /etc/supervisor/conf.d/arma3server.conf

# Make the directories
RUN mkdir -p ${ARMA3_SERVER_ROOT} && \
	chown -R core:core ${ARMA3_SERVER_ROOT}


WORKDIR ${ARMA3_SERVER_ROOT}

# game and von
EXPOSE 2302
# steam query
EXPOSE 2303
# steam
EXPOSE 2304
# placeholder for future VON
EXPOSE 2305