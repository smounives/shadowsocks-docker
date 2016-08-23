FROM alpine
MAINTAINER smounives <smounives@outlook.com>

RUN set -ex \
    && apk add --no-cache libsodium py-pip \
    && pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip

ENTRYPOINT ["/usr/bin/ssserver"]
