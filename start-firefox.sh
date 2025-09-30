#!/bin/bash
# Automated Firefox Desktop Startup Script
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
XVFB_DISPLAY=":99"

echo "[INFO] Checking for Firefox binary..."
if [ ! -x "$DIR/firefox/firefox" ]; then
	echo "[INFO] Firefox not found. Downloading and extracting..."
	wget -O "$DIR/firefox-latest.tar.bz2" "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
	rm -rf "$DIR/firefox"
	tar -xf "$DIR/firefox-latest.tar.bz2" -C "$DIR" || { echo '[ERROR] Failed to extract Firefox.'; exit 1; }
	rm "$DIR/firefox-latest.tar.bz2"
	echo "[INFO] Firefox downloaded and extracted."
fi

echo "[INFO] Starting virtual display (Xvfb)..."
Xvfb $XVFB_DISPLAY -screen 0 1920x1080x24 &
export DISPLAY=$XVFB_DISPLAY
sleep 2

echo "[INFO] Starting window manager (Fluxbox)..."
fluxbox &
sleep 2

echo "[INFO] Launching Firefox..."
"$DIR/firefox/firefox" &
sleep 5

echo "[INFO] Starting VNC server (x11vnc)..."
x11vnc -display $XVFB_DISPLAY -nopw -forever -shared -bg -rfbport 5900
sleep 2

echo "[INFO] Starting noVNC (websockify)..."
websockify --web=/usr/share/novnc/ 6080 localhost:5900 &
sleep 2

echo "[SUCCESS] Firefox desktop is ready!"
echo "Open this URL in your browser: http://localhost:6080/vnc.html"
