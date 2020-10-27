#!/bin/bash
docker pull centos:latest
docker build -t kricklen/tor_relay:latest .
