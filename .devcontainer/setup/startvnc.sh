#!/bin/bash

export DISPLAY=:1

Xvfb :1 -screen 0 1280x800x24 &

startlxde --display=:1 &

x11vnc -display :1 -forever -shared &

websockify --web=/usr/share/novnc 6080 localhost:5900 &
