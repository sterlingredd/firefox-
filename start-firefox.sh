#!/bin/bash
# Start Xvfb (virtual display), Fluxbox (window manager), Firefox, x11vnc (VNC server), and noVNC (browser-based VNC)
DIR="$(cd "$(dirname "$0")" && pwd)"
XVFB_DISPLAY=":99"
Xvfb $XVFB_DISPLAY -screen 0 1920x1080x24 &
export DISPLAY=$XVFB_DISPLAY
sleep 2
fluxbox &
sleep 2
"$DIR/firefox/firefox" &
sleep 5
x11vnc -display $XVFB_DISPLAY -nopw -forever -shared -bg -rfbport 5900
sleep 2
websockify --web=/usr/share/novnc/ 6080 localhost:5900 &
echo "noVNC started. Access your desktop at: http://localhost:6080/vnc.html"
