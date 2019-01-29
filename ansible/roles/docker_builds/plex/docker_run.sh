#!/bin/bash
docker run \
-d \
--name plex \
-p 32400:32400/tcp \
-p 3005:3005/tcp \
-p 8324:8324/tcp \
-p 32469:32469/tcp \
-p 1900:1900/udp \
-p 32410:32410/udp \
-p 32412:32412/udp \
-p 32413:32413/udp \
-p 32414:32414/udp \
-e TZ="Europe/Berlin" \
-h plex \
-v /var/git/docker/plex/database:/config \
-v /var/git/docker/plex/transcode:/transcode \
-v /var/git/docker/plex/media:/data \
plexinc/pms-docker:public

# Add local Networks to Preferences.xml:
allowedNetworks="127.0.0.1,192.168.178.0/24"

#-e ADVERTISE_IP="http://<hostIPAddress>:32400/" \
#-e PLEX_CLAIM="MyPlexToken" \

