#!/bin/bash
docker pull nginx:alpine
docker build -t local/web_nginx .
