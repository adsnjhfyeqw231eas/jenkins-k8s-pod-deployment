#!/bin/bash
apt -y update
sleep 5
apt -y upgrade
sleep 7
apt install docker.io apt-transport-https curl -y
sleep 5
systemctl restart docker
sleep 2
systemctl enable docker
sleep 2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
sleep 2
apt-add-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"
sleep 3
apt -y update
sleep 2
apt install kubeadm kubectl kubelet -y
sleep 3
apt-mark hold kubeadm kubectl kubelet
sleep 2
swapoff -a
sleep 2
free -mh
sleep 2

# run on server only
kubeadm init --pod-network-cidr=10.244.0.0/16
sleep 5
export KUBECONFIG=/etc/kubernetes/admin.conf
sleep 1
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
sleep 3
