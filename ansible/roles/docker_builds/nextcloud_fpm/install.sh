#!/bin/sh

/usr/src/nextcloud/occ maintenance:install --data-dir /var/www/html --admin-user admin --admin-pass admin

export occ_cmd='/var/www/html/occ'
$occ_cmd log:file --rotate-size 0 --file /var/www/nc_docker.log
