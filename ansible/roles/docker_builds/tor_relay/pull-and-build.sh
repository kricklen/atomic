#!/bin/bash
docker pull lncm/tor:latest
docker build -t kricklen/tor_relay:latest .
