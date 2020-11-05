#!/bin/bash
#docker run --privileged --rm -h ouroboros --name ouroboros -e CLEANUP=true -e INTERVAL=300 -e LOG_LEVEL=info -e SELF_UPDATE=true -e IGNORE="mongo influxdb postgres mariadb" -e TZ="Europe/Berlin" -v /var/run/docker.sock:/var/run/docker.sock pyouroboros/ouroboros

docker run --privileged -h ouroboros --restart unless-stopped --name ouroboros -e CLEANUP=true -e INTERVAL=3600 -e LOG_LEVEL=info -e SELF_UPDATE=true -e IGNORE="mongo influxdb postgres" -e TZ="Europe/Berlin" -v /var/run/docker.sock:/var/run/docker.sock -d pyouroboros/ouroboros
