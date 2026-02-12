#!/bin/bash
docker pull nginx:alpine
docker build -t kricklen/proxy_nginx:latest .
