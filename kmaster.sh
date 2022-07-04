#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
sudo apt-get install python3.8 -y
sudo apt-get update
sudo apt-get install docker.io -y
sudo service docker restart
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >/etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y