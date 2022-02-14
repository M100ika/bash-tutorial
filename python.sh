#!/usr/bin/env bash

set -Eeuo pipefail

sudo apt update
sudo apt -y upgrade
echo `python3 -V`
sudo apt install -y python3-pip
echo `python3 -V`