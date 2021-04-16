#!/bin/bash
cd nextcloud_fpm
./pull-and-build.sh
./push.sh

cd ../nextcloud_nginx
./pull-and-build.sh
./push.sh

cd ../proxy_certbot
./pull-and-build.sh
./push.sh

cd ../proxy_nginx
./pull-and-build.sh
./push.sh

cd ../samba
./pull-and-build.sh
./push.sh

cd ../tor_relay
./pull-and-build.sh
./push.sh

cd ../web_fpm
./pull-and-build.sh
./push.sh

cd ../web_nginx
./pull-and-build.sh
./push.sh

