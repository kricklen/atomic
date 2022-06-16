#!/bin/bash
docker pull docker.io/mariadb:10.8.2
docker build -t kricklen/nextcloud_db .
