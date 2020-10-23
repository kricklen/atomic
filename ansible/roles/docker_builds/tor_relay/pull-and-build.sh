#!/bin/bash
docker pull centos:latest
docker build -t local/tor_relay:latest .
