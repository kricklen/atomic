#!/bin/sh
/usr/bin/crontab -l | { cat; echo "5 3 0 0 0 /certbot_renew.sh"; } | crontab -
