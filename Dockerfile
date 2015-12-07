FROM beevelop/android-nodejs
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV CORDOVA_VERSION 5.4.1

WORKDIR "/tmp"

# Install Cordova
RUN npm i -g --unsafe-perm cordova@${CORDOVA_VERSION}
