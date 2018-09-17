#!/bin/sh
sudo apt-get update
sudo apt-get install -y python-pip python-netaddr
sudo pip install --upgrade pip ansible
git clone https://github.com/kubernetes-incubator/kubespray.git && cd kubespray
git checkout v2.4.0 && cd ..
ansible-playbook -i hosts.ini kubespray/cluster.yml
