#!/bin/bash

# Xvfbの停止
kill $(ps aux | grep '[X]vfb' | awk '{print $2}')

# LXDEの停止
kill $(ps aux | grep '[s]tartlxde' | awk '{print $2}')

# x11vncの停止
kill $(ps aux | grep '[x]11vnc' | awk '{print $2}')

# websockifyの停止
kill $(ps aux | grep '[w]ebsockify' | awk '{print $2}')
