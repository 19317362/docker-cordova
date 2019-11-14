FROM beevelop/android-nodejs

MAINTAINER 19317362 <19317362@qq.com>

# ANDROID_SDK_ROOT=undefined (recommended setting)
# ANDROID_HOME=/opt/android (DEPRECATED)
#    && yes | /opt/android/tools/bin/sdkmanager --licenses
#    && yes | /opt/android/tools/bin/sdkmanager --update

ENV ANDROID_SDK_ROOT=/opt/android
WORKDIR "/tmp"

RUN \
    apt update \
    && apt upgrade -y \
    && apt install -y imagemagick \
    && npm i -g --unsafe-perm cordova ionic cordova-icon cordova-splash node-sass
