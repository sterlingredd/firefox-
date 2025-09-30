# Use the official Codespaces base image (Ubuntu)
FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install required packages for Firefox, Xvfb, Fluxbox, x11vnc, noVNC
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
        xz-utils \
        libgtk-3-0 \
        libdbus-glib-1-2 \
        libasound2 \
        libx11-xcb1 \
        libxtst6 \
        libnss3 \
        libxss1 \
        libxcomposite1 \
        libxdamage1 \
        libxrandr2 \
        libgbm1 \
        libpango-1.0-0 \
        libpangocairo-1.0-0 \
        libatk1.0-0 \
        libatk-bridge2.0-0 \
        libgtk-3-0 \
        xvfb \
        fluxbox \
        x11vnc \
        python3 \
        python3-websockify \
        net-tools \
        curl \
        ca-certificates \
        && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspaces/assa-v4

# Make sure scripts are executable
RUN chmod +x start-firefox.sh firefox-easy-start.sh || true

# Expose noVNC port
EXPOSE 6080

# Default command (does not auto-start browser, user runs script)
CMD ["bash"]
