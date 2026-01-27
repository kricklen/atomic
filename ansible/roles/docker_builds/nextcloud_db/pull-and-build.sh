#!/bin/bash
docker pull docker.io/mariadb:latest
docker build -t kricklen/nextcloud_db .
