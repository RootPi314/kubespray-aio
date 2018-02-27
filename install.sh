#!/bin/sh

sudo apt-get install -y python-pip python-netaddr
sudo pip install ansible

git clone https://github.com/kubernetes-incubator/kubespray.git
