#!/bin/bash

# Start VNC server
mkdir -p /root/.vnc
echo "password" | vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd

# Start Xvfb display
Xvfb :1 -screen 0 1920x1080x24 &
export DISPLAY=:1

# Start XFCE Desktop
xfce4-session &

# Start VNC server
tigervnc-server :1 &

# Start noVNC
/opt/noVNC/utils/novnc_proxy --vnc localhost:5901 --listen 6080 &

# Start AWS SCT automatically
/opt/aws/AWSSchemaConversionTool/AWSSchemaConversionTool &

# Keep container alive
tail -f /dev/null

