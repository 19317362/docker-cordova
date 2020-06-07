FROM beevelop/android-nodejs

MAINTAINER 19317362 <19317362@qq.com>
# https://stackoverflow.com/questions/36587850/best-way-to-install-java-8-using-docker
# ANDROID_SDK_ROOT=undefined (recommended setting)
# ANDROID_HOME=/opt/android (DEPRECATED)
#    && yes | /opt/android/tools/bin/sdkmanager --licenses
#    && yes | /opt/android/tools/bin/sdkmanager --update
# && useradd --uid 1000 --create-home --shell /bin/bash u1000
#  id 1000 ==> node
ENV TZ=Asia/Shanghai
ENV ANDROID_SDK_ROOT=/opt/android
WORKDIR "/tmp"

RUN \
    apt update \
    && apt upgrade -y \
    && apt install -y apt-utils curl zip unzip \
    && apt install -y software-properties-common \
    && add-apt-repository -y ppa:webupd8team/java \
    && apt install -y python3 iputils-ping git \
    && apt-get install -y openjdk-8-jdk \
    && apt-get install -y ant gradle\
    && apt-get install ca-certificates-java \
    && update-ca-certificates -f \
    && npm i -g --unsafe-perm cordova @ionic/cli node-sass cordova-res nrm \
    && git config --global user.email "19317362@qq.com" \
    && git config --global user.name "19317352" \
    && nrm use taobao \
    && useradd --uid 501 --create-home --shell /bin/bash u501 \
  && useradd --uid 1001 --create-home --shell /bin/bash u1001 \
  && useradd --uid 1002 --create-home --shell /bin/bash u1002 \
  && useradd --uid 1003 --create-home --shell /bin/bash u1003 \
  && useradd --uid 1004 --create-home --shell /bin/bash u1004 \
  && useradd --uid 1005 --create-home --shell /bin/bash u1005 \
  && useradd --uid 1006 --create-home --shell /bin/bash u1006 \
  && useradd --uid 1007 --create-home --shell /bin/bash u1007 \
  && useradd --uid 1008 --create-home --shell /bin/bash u1008 \
  && useradd --uid 1009 --create-home --shell /bin/bash u1009 \
  && useradd --uid 1010 --create-home --shell /bin/bash u1010 \
  && useradd --uid 1011 --create-home --shell /bin/bash u1011 \
  && useradd --uid 1012 --create-home --shell /bin/bash u1012 \
  && useradd --uid 1013 --create-home --shell /bin/bash u1013 \
  && useradd --uid 1014 --create-home --shell /bin/bash u1014 \
  && useradd --uid 1015 --create-home --shell /bin/bash u1015 \
  && useradd --uid 1016 --create-home --shell /bin/bash u1016 \
  && useradd --uid 1017 --create-home --shell /bin/bash u1017 \
  && useradd --uid 1018 --create-home --shell /bin/bash u1018 \
  && useradd --uid 1019 --create-home --shell /bin/bash u1019 \  
  && useradd --uid 1020 --create-home --shell /bin/bash u1020 \
  && echo "u501 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1000 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1001 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1002 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1003 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1004 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1005 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1006 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1007 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1008 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1009 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1010 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1011 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1012 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1013 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1014 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1015 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1016 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1017 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1018 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1019 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers \
  && echo "u1020 ALL=(ALL) NOPASSWD: ALL" | tee -a /etc/sudoers 
