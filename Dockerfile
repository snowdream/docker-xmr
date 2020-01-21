FROM alpine:latest

LABEL maintainer="snowdream <sn0wdr1am@icloud.com>"

ENV CPU_USAGE=90 \
    XMRIG_VERSION=5.4.0  

RUN apk add --no-cache cpulimit \
    &&  cd /root \
    &&  wget --no-check-certificate -c https://github.com/C3Pool/profit-switching-miner/blob/master/xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz?raw=true -O xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz \
    &&  tar zxvf xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz  \
    &&  cd xmrig-${XMRIG_VERSION}-prifit-switching-Linux \
    &&  cp xmrig /usr/bin/ \
    &&  mkdir -p /etc/xmrig \
    &&  cp config.json /etc/xmrig \
    &&  cd /root \
    &&  rm xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz  \
    &&  rm -rf xmrig-${XMRIG_VERSION}-prifit-switching-Linux \
    &&  rm -rf /tmp/* /var/cache/apk/*

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]