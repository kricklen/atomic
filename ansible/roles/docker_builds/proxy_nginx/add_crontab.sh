#!/bin/sh
#/usr/bin/crontab -l | { cat; echo "20	5	*	*	0	/nginx_reload.sh"; } | crontab -
/usr/bin/crontab -l | { cat; echo "20	5	*	*	0	/usr/sbin/nginx -s reload"; } | crontab -
