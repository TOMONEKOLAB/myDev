FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=:1 \
    XDG_RUNTIME_DIR=/tmp/runtime-root \
    LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8

USER root

WORKDIR /root/java

# Set a Japanese mirror for apt sources
RUN sed -i.bak -e 's|http://archive.ubuntu.com/ubuntu/|http://ftp.jaist.ac.jp/pub/Linux/ubuntu/|g' /etc/apt/sources.list

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

# instration of packages
RUN apt-fast update && apt-fast upgrade -y && apt-fast install -y --no-install-recommends \
    # package tools
    pkg-config software-properties-common \
    # Java
    openjdk-21-jdk \
    # OpenCL
    ocl-icd-opencl-dev opencl-headers \
    # signal
    libfftw3-dev \
    # images
    libopencv-dev libpng-dev libjpeg-turbo8-dev \
    # compression
    zlib1g-dev bzip2 \
    # multi-threads
    libomp-dev libpthread-stubs0-dev \
    # network
    libcurl4-openssl-dev \
    # debugger
    valgrind gdb strace ltrace \
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
