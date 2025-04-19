FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:1 \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root/atcoder

# Set a Japanese mirror for apt sources
RUN sed -i.bak -e 's|http://archive.ubuntu.com/ubuntu/|http://ftp.jaist.ac.jp/pub/Linux/ubuntu/|g' /etc/apt/sources.list

# instllation of packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    # package tools
    pkg-config software-properties-common \
    # C, C++
    build-essential gdb \
    # Python
    python3-pip python-is-python3 \
    # Node.js npm
    nodejs npm \
    # tools
    git git-lfs git-extras curl sudo wget unzip nano firefox locales vim htop tree \
    # JP-env
    && locale-gen ja_JP.UTF-8 \
    && update-locale LANG=ja_JP.UTF-8 \
    # online-judge-tools
    && pip install --no-cache-dir online-judge-tools \
    # atcoder-cli
    && npm install -g atcoder-cli \
    # delete cache
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*
