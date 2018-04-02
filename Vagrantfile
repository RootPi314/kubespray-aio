# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  # Forward kube-apiserver
  config.vm.network "forwarded_port", guest: 6443, host: 6443

  config.vm.provider "virtualbox" do |vb|
    # At least 2GB of RAM needed
    vb.memory = "2048"
  end

  # Copy hosts.ini
  config.vm.provision "file", source: "hosts.ini", destination: "hosts.ini"

  # Install Kubespray dependencies & run playbook
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y python-pip python-netaddr
    sudo pip  --upgrade pip ansible
    git clone https://github.com/kubernetes-incubator/kubespray.git && cd kubespray
    git checkout v2.4.0 && cd ..
    ansible-playbook --user ubuntu --become --become-user=root -i hosts.ini kubespray/cluster.yml
  SHELL
end
