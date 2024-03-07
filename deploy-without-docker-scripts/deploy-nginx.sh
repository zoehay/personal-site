#! /usr/bin/bash
set -eox pipefail

echo "Updating ningx conf files"
sudo cp -r -v /home/ec2-user/dev/personal-site/etc/nginx /etc
echo "Conf files updated, reloading nginx"
sudo systemctl reload nginx
echo "Update complete"
