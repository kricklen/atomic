#!/bin/sh
/usr/bin/crontab -l | { cat; echo "20 5 * * 0 /nginx_reload.sh"; } | crontab -
