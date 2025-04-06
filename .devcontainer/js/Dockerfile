FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:1 \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root

# instllation of packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends\
    # Node.js npm
    nodejs npm \
    # tools
    git git-lfs git-extras curl sudo wget unzip nano firefox locales vim htop tree net-tools \
    # noVNC
    novnc websockify x11vnc lxde xvfb xterm \
    # JP-env
    && locale-gen ja_JP.UTF-8 \
    && update-locale LANG=ja_JP.UTF-8 \
    # delete cache
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*

# alias
RUN echo "alias st='source ~/setup/startvnc.sh'" >> ~/.bashrc \
    && echo "alias fin='source ~/setup/finishvnc.sh'" >> ~/.bashrc
