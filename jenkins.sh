#!/bin/bash
apt update -y && apt install openjdk-11-jdk -y
sleep 2
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
apt update -y 
sleep 2
apt install jenkins -y
sleep 3
setfacl -m jenkins:rwx /var/run/docker.sock && getfacl /var/run/docker.sock
sleep 1
which docker
which jenkins
which git
echo "==========="
cat /var/lib/jenkins/secrets/initialAdminPassword
