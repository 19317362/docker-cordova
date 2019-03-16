FROM beevelop/android-nodejs

MAINTAINER 19317362 <19317362@qq.com>


WORKDIR "/tmp"

RUN \
    apt update \
    && apt upgrade -y \
    && apt install -y imagemagick \
    && npm i -g --unsafe-perm cordova ionic cordova-icon cordova-splash node-sass
