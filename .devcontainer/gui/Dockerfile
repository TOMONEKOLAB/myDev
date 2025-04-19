FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:1 \
    XDG_RUNTIME_DIR=/tmp/runtime-root \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root

# Set a Japanese mirror for apt sources
RUN sed -i.bak -e 's|http://archive.ubuntu.com/ubuntu/|http://ftp.jaist.ac.jp/pub/Linux/ubuntu/|g' /etc/apt/sources.list

# instration of packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends\
    # noVNC
    novnc websockify x11vnc lxde xvfb xterm dbus-x11 \
    # Excel (openpyxl)
    libreoffice libreoffice-draw libreoffice-l10n-ja libreoffice-dmaths libreoffice-ogltrans libreoffice-writer2xhtml libreoffice-help-ja \
    # tools
    git git-lfs git-extras curl sudo wget unzip nano locales vim htop tree gnuplot dos2unix \
    # JP-env
    fonts-takao fonts-vlgothic fonts-noto-cjk \
    && locale-gen ja_JP.UTF-8 \
    && update-locale LANG=ja_JP.UTF-8 \
    # delete cache
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*

COPY startup.sh /opt/startup.sh

COPY shutdown.sh /opt/shutdown.sh

RUN chmod +x /opt/startup.sh && dos2unix /opt/startup.sh

RUN chmod +x /opt/shutdown.sh && dos2unix /opt/shutdown.sh
