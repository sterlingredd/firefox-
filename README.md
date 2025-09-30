
# Zero-Effort Firefox Browser Setup

This project gives you a full-featured Firefox browser in a virtual desktop, accessible from your web browser with just one command—no manual downloads or setup required.

---

## 🚀 Zero-Effort Setup (Codespaces/devcontainer)

**Recommended:** For GitHub Codespaces or VS Code Dev Containers

1. **Open this repo in Codespaces or a VS Code devcontainer.**
2. Wait for setup to finish (all dependencies auto-installed).
3. Start Firefox:
   ```bash
   bash firefox-easy-start.sh
   ```
4. Open the printed noVNC link (default: http://localhost:6080) in your browser.

---

## 🖥️ Universal Setup (Any Linux)

If not using Codespaces/devcontainer, just run:
```bash
bash firefox-easy-start.sh --install-deps
```
This installs all required packages (Ubuntu/Debian), then starts everything.

---

## 🔧 Manual Start/Stop

**Start everything:**
```bash
bash firefox-easy-start.sh
```

**Stop everything:**
```bash
bash firefox-easy-start.sh --stop
```

**Troubleshooting:**
- If you see errors about X server lock files, run:
  ```bash
  bash firefox-easy-start.sh --cleanup
  ```

---

## 📁 Files

- `start-firefox.sh`: Main script to start all services and browser
- `firefox-easy-start.sh`: User-friendly wrapper for startup/cleanup
- `.devcontainer/`: Codespaces/devcontainer automation (see above)
- `README.md`: This file

---

## � GitHub & Large Files

- No browser binaries are committed to git.
- If you ever see a git error about large files, run:
  ```bash
  git filter-repo --force --path firefox/libxul.so --invert-paths
  ```
- Then force-push to your repo.

---

## ❓ FAQ

**Q: Can I use this in Codespaces or VS Code Dev Containers?**
A: Yes! Just open the repo, wait for setup, and run the start script.

**Q: Will this break if I clone it elsewhere?**
A: No. All automation is portable. Just run the start script.

**Q: Where is Firefox?**
A: The script downloads the latest Firefox tarball if missing. No binaries in git.

**Q: How do I stop everything?**
A: Run `bash firefox-easy-start.sh --stop`.

**Q: How do I clean up X/VNC processes?**
A: Run `bash firefox-easy-start.sh --cleanup`.

**Q: How do I update Firefox?**
A: Delete the `firefox/` folder and rerun the start script.

**Q: How do I update dependencies?**
A: Run `bash firefox-easy-start.sh --install-deps`.

**Q: Can I use this on Windows/Mac?**
A: Not natively. Use Codespaces, WSL2, or a Linux VM.
