#!/bin/bash
docker pull php:fpm-alpine
docker build -t kricklen/web_fpm:latest .
