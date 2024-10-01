#!/bin/bash
docker pull ghcr.io/linuxserver/baseimage-alpine:amd64-edge
docker build -t kricklen/tor_relay:latest .
