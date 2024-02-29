#!/bin/bash

set -eox pipefail
echo "Copying e-commerce server service file to /etc"
sudo cp -r -v /home/ec2-user/dev/personal-site/e-commerce-server/e-commerce-server.service /etc/systemd/system
echo "Service file for e-commerce server copied to /etc, reload systemd configuration"
sudo systemctl daemon-reload
echo "Finished copying e-commerce-server service and reloading"