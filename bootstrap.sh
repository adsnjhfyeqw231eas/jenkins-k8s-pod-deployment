#!/bin/bash
sudo apt update -y
sleep 3
sudo apt upgrade -y
sleep 5
sudo apt install git -y
sleep 1
sudo apt autoremove -y
sleep 2
