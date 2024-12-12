#!/bin/bash
apt -y update
#!/bin/bash
sudo apt -y upgrade
sudo apt install docker.io apt-transport-https curl -y
sudo systemctl restart docker
sudo systemctl enable docker
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
sudo apt-add-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt -y update
sudo apt install kubeadm kubectl kubelet -y
sudo apt-mark hold kubeadm kubectl kubelet
sudo swapoff -a
sudo free -mh


# run on server only
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
ls .kube/config
