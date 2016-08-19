FROM alpine
MAINTAINER smounives <smounives@outlook.com>

ENV SS_VER master

RUN set -ex \
    && apk add --no-cache curl git libsodium py-pip \
    && pip install git+https://github.com/shadowsocks/shadowsocks.git@$SS_VER \
    && apk del --purge curl git

ENTRYPOINT ["/usr/bin/ssserver"]
