#!/bin/bash

sudo apt update -y

sudo apt upgrade -y

sudo apt-get install software-properties-common

sudo apt-add-repository ppa:ansible/ansible # Press Enter

sudo apt update

sudo apt install ansible -y

cd .ssh 

sudo chmod 400 file.pem

cd /etc/ansible