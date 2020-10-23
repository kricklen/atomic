#!/bin/bash
docker run -d \
  -v /mnt/proxy/nginx:/etc/nginx/conf.d:Z \
  -v /mnt/proxy/certbot/conf:/etc/letsencrypt:z \
  -v /mnt/proxy/certbot/www:/var/www/certbot:ro,z \
  -p 80:80 \
  -p 443:443 \
  --restart unless-stopped \
  --network "proxy_net" \
  --name proxy-nginx-2 \
  --hostname proxy-nginx-2 \
  local/proxy_nginx:latest

docker network connect bridge proxy-nginx-2
