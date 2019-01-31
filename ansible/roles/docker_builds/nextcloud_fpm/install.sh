#!/bin/sh

export occ_cmd='/var/www/html/occ'

# Create link for nextcloud log file to write messages to stdout
echo "Linking nc_docker.log to stdout"
ln -s /dev/stdout /var/www/nc_docker.log
chown www-data:www-data /var/www/nc_docker.log

$occ_cmd maintenance:install --admin-user admin --admin-pass admin
echo "Setting log file to c_docker.log"
$occ_cmd log:file --rotate-size 0 --file /var/www/nc_docker.log
echo "Installing calendar app"
$occ_cmd app:install calendar
echo "Installing contacts app"
$occ_cmd app:install contacts
echo "Done"

exec "$@"
