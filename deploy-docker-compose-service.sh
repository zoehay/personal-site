#! /usr/bin/bash
set -eox pipefail

echo "Copying docker-compose service file to /etc"
sudo cp -v /home/ec2-user/dev/personal-site/docker-compose.service /etc/systemd/system
sudo chmod 664 /etc/systemd/system/docker-compose.service

echo "Service file for docker-compose copied to /etc, reload systemd configuration"
sudo systemctl daemon-reload
sudo systemctl enable --now docker-compose.service

echo "Finished copying docker-compose service and reloading"