FROM nvidia/cuda:12.8.0-cudnn-devel-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:1 \
    XDG_RUNTIME_DIR=/tmp/runtime-root \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root/cuda

# Set a Japanese mirror for apt sources
RUN sed -i.bak -e 's|http://archive.ubuntu.com/ubuntu/|http://ftp.jaist.ac.jp/pub/Linux/ubuntu/|g' /etc/apt/sources.list

# instration of packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends\
    # package tools
    pkg-config software-properties-common \
    # C, C++
    build-essential cmake \
    # Python
    python3 python3-venv python3-pip python3-tk python-is-python3 \
    # tools
    git git-lfs git-extras curl sudo wget unzip nano locales vim htop tree gnuplot net-tools \
    # JP-env
    && locale-gen ja_JP.UTF-8 \
    && update-locale LANG=ja_JP.UTF-8 \
    # delete cache
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/*
