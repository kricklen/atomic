#!/bin/sh
set -e

export occ_cmd='/var/www/html/occ'

# Configure nextcloud
echo "Setting log file to php://stdout"
$occ_cmd log:file --rotate-size 0 --file php://stdout

exec "$@"
