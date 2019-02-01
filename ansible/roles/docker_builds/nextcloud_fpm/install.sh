#!/bin/sh
export occ_cmd='/var/www/html/occ'
$occ_cmd maintenance:install --admin-user admin --admin-pass admin
$occ_cmd log:file --rotate-size 0 --file /var/www/nc_docker.log
