#!/bin/sh
/usr/bin/crontab -l | { cat; echo "10 3 0 0 0 /nginx_reload.sh"; } | crontab -
