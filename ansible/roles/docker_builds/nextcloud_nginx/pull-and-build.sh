#!/bin/bash
docker pull nginx:alpine
docker build -t kricklen/nextcloud_nginx .
