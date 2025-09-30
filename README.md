# Easy Firefox Browser Setup in Dev Container

This project includes scripts to launch a full-featured Firefox browser in a virtual desktop, accessible from your web browser via noVNC.

## Quick Start

1. **Start the browser environment:**
   ```bash
   ./firefox-easy-start.sh
   ```
   This script will clean up any old processes and start everything you need.

2. **Access the Firefox UI:**
   - Open your browser and go to:
     ```
     http://localhost:6080/vnc.html
     ```
   - If using Codespaces or a cloud devcontainer, forward port 6080 and open the provided URL.

## Troubleshooting
- If you see errors about display `:99` or a blank screen, just re-run:
  ```bash
  ./firefox-easy-start.sh
  ```
- If you need to manually clean up, run:
  ```bash
  pkill -f Xvfb; pkill -f fluxbox; pkill -f firefox; pkill -f x11vnc; pkill -f websockify; pkill -f novnc; rm -f /tmp/.X99-lock
  ```

## Files
- `start-firefox.sh`: Main script to launch the virtual desktop, window manager, Firefox, and noVNC.
- `firefox-easy-start.sh`: One-command startup and cleanup for convenience.

---
Enjoy your full-featured Firefox browser in any dev container or Codespace!
