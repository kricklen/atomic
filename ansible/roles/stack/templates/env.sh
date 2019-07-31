#!/usr/bin/env bash

# Global vars
export timezone=Europe/Berlin

# DDClient
export ddclient_user_id=$(id -u ddclient)
export ddclient_group_id=$(id -u ddclient)
export ddclient_config_dir=/mnt/ddclient

# Nextcloud
export nextcloud_user_id=$(id -u nextcloud)
export nextcloud_group_id=$(id -g nextcloud)
export nextcloud_db_dir=/mnt/nextcloud/db
export nextcloud_www_dir=/mnt/nextcloud/www
export nextcloud_nginx_dir=/mnt/nextcloud/nginx

docker stack deploy -c ./docker-compose.yml HomeServer