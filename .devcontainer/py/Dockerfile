FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:1 \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root/py

# Set a Japanese mirror for apt sources
RUN sed -i.bak -e 's|http://archive.ubuntu.com/ubuntu/|http://ftp.jaist.ac.jp/pub/Linux/ubuntu/|g' /etc/apt/sources.list

# instllation of packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends\
    # package tools
    software-properties-common \
    # Python
    python3 python3-venv python3-pip python3-tk python-is-python3 \
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
