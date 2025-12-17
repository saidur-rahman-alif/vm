#!/bin/bash

# Create folder
sudo mkdir -p /etc/alive/

# Download alive.sh
sudo wget -O /etc/alive/alive.sh \
https://raw.githubusercontent.com/saidur-rahman-alif/alive/refs/heads/main/alive.sh

# Give permission
sudo chmod +x /etc/alive/alive.sh

# Download service file
sudo wget -O /etc/systemd/system/alive.service \
https://raw.githubusercontent.com/saidur-rahman-alif/alive/refs/heads/main/alive.service

# Reload systemd
sudo systemctl daemon-reload

# Enable service
sudo systemctl enable alive.service

# Start service
sudo systemctl start alive.service
