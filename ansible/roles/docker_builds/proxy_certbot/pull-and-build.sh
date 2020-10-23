#!/bin/bash
docker pull certbot/certbot:latest
docker build -t local/proxy_certbot .
