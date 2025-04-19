FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root/js

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    software-properties-common \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository -y ppa:apt-fast/stable

RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    apt-fast \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*

# instllation of packages
RUN apt-fast update && apt-fast upgrade -y && apt-fast install -y --no-install-recommends \
    # Node.js npm
    nodejs npm \
    # tools
    git git-lfs git-extras curl sudo wget unzip nano firefox locales vim htop tree net-tools \
    # JP-env
    && locale-gen ja_JP.UTF-8 \
    && update-locale LANG=ja_JP.UTF-8 \
    # delete cache
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*
