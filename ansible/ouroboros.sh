#!/bin/bash
docker run -h ouroboros --name ouroboros -e CLEANUP=true -e INTERVAL=300 -e LOG_LEVEL=info -e SELF_UPDATE=true -e IGNORE="mongo influxdb postgres mariadb" -e TZ="Europe/Berlin" -v /var/run/docker.sock:/var/run/docker.sock -d pyouroboros/ouroboros

