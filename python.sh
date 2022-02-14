#!/usr/bin/env bash

set -Eeuo pipefail

sudo apt update
sudo apt -y upgrade
echo `python3 -V`
sudo apt install -y python3-pip
echo `python3 -V`

echo ' ########################################################################################### '
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev

sudo apt install -y python3-venv

cd ~/.my_script_bash/git/bash-tutorial

mkdir myapp && cd myapp
echo '###########################'
echo '###########################'
echo '###########################'
echo '###########################'
echo '###########################'
echo '###########################'
echo '###########################'
echo '###########################'

python3 -m venv env
source env/bin/activate
python
