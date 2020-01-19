FROM centos:latest

LABEL maintainer="snowdream <sn0wdr1am@icloud.com>"

ENV CPULIMIT_VERSION=0.2 \
    CPU_USEAGE=90 \
    XMRIG_VERSION=5.4.0  

RUN dnf install -y wget \
    && dnf groupinstall  -y 'Development Tools' \
    &&  cd /root \
    &&  wget --no-check-certificate -c https://github.com/opsengine/cpulimit/archive/v${CPULIMIT_VERSION}.tar.gz \
    &&  tar zxvf v${CPULIMIT_VERSION}.tar.gz \
    &&  cd cpulimit-${CPULIMIT_VERSION} \
    &&  make \
    &&  cp src/cpulimit /usr/bin/ \
    &&  cd /root \
    &&  wget --no-check-certificate -c https://github.com/C3Pool/profit-switching-miner/blob/master/xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz?raw=true -O xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz \
    &&  tar zxvf xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz  \
    &&  cd xmrig-${XMRIG_VERSION}-prifit-switching-Linux \
    &&  cp xmrig /usr/bin/ \
    &&  mkdir -p /etc/xmrig \
    &&  cp config.json /etc/xmrig \
    &&  cd /root \
    &&  rm v${CPULIMIT_VERSION}.tar.gz \
    &&  rm -rf cpulimit-${CPULIMIT_VERSION} \
    &&  rm xmrig-${XMRIG_VERSION}-profit-switching-Linux.tar.gz  \
    &&  rm -rf xmrig-${XMRIG_VERSION}-prifit-switching-Linux \
    &&  dnf group remove  -y 'Development Tools'  \
    &&  dnf clean all

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]