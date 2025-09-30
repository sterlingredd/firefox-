#!/bin/bash
# Clean up any previous virtual desktop, VNC, and browser processes
pkill -f Xvfb; pkill -f fluxbox; pkill -f firefox; pkill -f x11vnc; pkill -f websockify; pkill -f novnc; rm -f /tmp/.X99-lock
# Start the full Firefox desktop environment with noVNC for browser-based access
/workspaces/assa-v4/start-firefox.sh
