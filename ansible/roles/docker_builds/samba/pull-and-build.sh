#!/bin/bash
docker pull alpine:latest
docker build -t local/samba .
