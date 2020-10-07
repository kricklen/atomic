#!/bin/bash
ansible-playbook -i "localhost" home-server.yml -e run_mode=uninstall --check
