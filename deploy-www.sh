#! /usr/bin/bash
set -eox pipefail

echo "Updating files"
sudo cp -r -v /home/ec2-user/dev/personal-site/www /var
echo "Files updated, reloading nginx"
sudo systemctl reload nginx
echo "Update complete"
