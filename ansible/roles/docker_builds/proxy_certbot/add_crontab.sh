#!/bin/sh
/usr/bin/crontab -l | { cat; echo "15 5 * * 0 /certbot_renew.sh"; } | crontab -
