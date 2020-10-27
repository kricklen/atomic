#!/bin/bash
docker pull certbot/certbot:latest
docker build -t kricklen/proxy_certbot .
