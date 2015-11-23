# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "lamp-devbox.local"
  config.vm.network "private_network", ip: "192.168.33.20"

  config.vm.provider "virtualbox" do |v|
    v.name = "LAMP Dev box"
    v.memory = 2048
    v.cpus = 1
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
end

