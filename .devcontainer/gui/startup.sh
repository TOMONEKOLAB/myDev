#!/bin/bash

export DISPLAY=:1
export XDG_RUNTIME_DIR=/tmp/runtime-root
mkdir -p $XDG_RUNTIME_DIR

# Start virtual framebuffer
Xvfb :1 -screen 0 1280x800x24 &
sleep 2

# Start LXDE
startlxde --display=:1 &
sleep 2

# Start x11vnc (VNC server)
x11vnc -display :1 -forever -shared -nopw -rfbport 5900 &
sleep 2

# Start noVNC (websockify)
websockify --web=/usr/share/novnc --wrap-mode=ignore 6080 localhost:5900 &

# Prevent container from exiting
tail -f /dev/null
