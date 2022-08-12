#!/bin/bash
sudo apt update -y
sleep 3
sudo apt upgrade -y
sleep 5
sudo apt install git docker.io acl -y
sleep 3
sudo systemctl enable --now docker
sleep 2
sudo apt autoremove -y
sleep 2
