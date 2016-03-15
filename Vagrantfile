# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "forwarded_port", guest: 80, host: 2020
  config.vm.network "public_network"

  config.vm.provision "docker" do |d| 
    d.pull_images "sameersbn/gitlab:8.5.5"
  end

  config.vm.provision :shell, path: "script.sh"
  config.vm.provision :shell, path: "bootstrap.sh", run "always"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
