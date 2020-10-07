#!/bin/bash
docker pull php:fpm-alpine
docker build -t local/web_fpm .
