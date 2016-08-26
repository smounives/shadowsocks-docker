FROM alpine
MAINTAINER smounives <smounives@outlook.com>

RUN set -ex \
    && if [ $(wget -qO- ipinfo.io/country) == CN ]; then echo "https://mirrors.ustc.edu.cn/alpine/latest-stable/main/" > /etc/apk/repositories ;fi \
    && apk add --no-cache libsodium py-pip \
    && pip --no-cache-dir install https://github.com/shadowsocks/shadowsocks/archive/master.zip

ENTRYPOINT ["/usr/bin/ssserver"]
