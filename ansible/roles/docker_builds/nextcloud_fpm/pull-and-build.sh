#!/bin/bash
docker pull nextcloud:fpm-alpine
docker build -t local/nextcloud_fpm .
