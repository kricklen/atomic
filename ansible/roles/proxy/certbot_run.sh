#!/bin/bash
docker run -it \
  -v /mnt/proxy/certbot/conf:/etc/letsencrypt \
  -v /mnt/proxy/certbot/www:/var/www/certbot \
  --network "proxy_net" \
  local/proxy_certbot \
  sh
