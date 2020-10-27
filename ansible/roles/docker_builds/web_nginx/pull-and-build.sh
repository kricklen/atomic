#!/bin/bash
docker pull nginx:alpine
docker build -t kricklen/web_nginx .
