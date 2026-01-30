#!/bin/bash
docker run -d --name wud \
  --restart unless-stopped \
  -h wud \
  -p 3000:3000 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e WUD_TRIGGER_DOCKER_UPDATE_PRUNE=true \
  -e WUD_TRIGGER_DOCKER_UPDATE_AUTO=true \
  -e WUD_TRIGGER_DOCKER_UPDATE_MODE=simple \
  getwud/wud
