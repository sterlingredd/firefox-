#!/bin/bash
# Easy Start: Clean up and launch everything for Firefox desktop
echo "[INFO] Cleaning up any previous Firefox desktop processes..."
pkill -f Xvfb; pkill -f fluxbox; pkill -f firefox; pkill -f x11vnc; pkill -f websockify; pkill -f novnc; rm -f /tmp/.X99-lock
echo "[INFO] Starting Firefox desktop environment..."
if /workspaces/assa-v4/start-firefox.sh; then
	echo "[SUCCESS] Firefox desktop started!"
else
	echo "[ERROR] Something went wrong. Please check the terminal output above."
fi
