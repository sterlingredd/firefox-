# Zero-Effort Firefox Browser Setup

This project gives you a full-featured Firefox browser in a virtual desktop, accessible from your web browser with just one command—no manual downloads or setup required.

## 🚀 Quick Start

1. **Start everything (auto-downloads Firefox if needed):**
   ```bash
   ./firefox-easy-start.sh
   ```
   - This script cleans up any old processes and launches the full environment.
   - If Firefox is missing, it will be downloaded and set up automatically.

2. **Open the browser UI:**
   - Go to:
     ```
     http://localhost:6080/vnc.html
     ```
   - In Codespaces or devcontainers, forward port 6080 and open the provided URL.

## 🛠️ Troubleshooting
- If you see errors or a blank screen, just re-run:
  ```bash
  ./firefox-easy-start.sh
  ```
- For manual cleanup:
  ```bash
  pkill -f Xvfb; pkill -f fluxbox; pkill -f firefox; pkill -f x11vnc; pkill -f websockify; pkill -f novnc; rm -f /tmp/.X99-lock
  ```

## 📁 Files
- `start-firefox.sh`: Main script—handles everything, including auto-downloading Firefox if needed.
- `firefox-easy-start.sh`: One-command startup and cleanup for the easiest experience.

---
Enjoy a real Firefox browser in any dev container or Codespace, with zero hassle!
