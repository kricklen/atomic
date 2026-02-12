#!/bin/bash
docker pull nextcloud:fpm-alpine
docker build -t kricklen/nextcloud_fpm:latest .
