#!/usr/bin/env bash
sudo curl -fsSL https://get.docker.com -o install-docker.sh
chmod +x ./install-docker.sh
sudo ./install-docker.sh
sudo usermod -aG docker $USER
sudo apt-get install -y docker-compose
