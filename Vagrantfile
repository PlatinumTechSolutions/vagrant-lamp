# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "lamp-devbox.local"
  config.vm.network "private_network", ip: "192.168.33.20"

  config.vm.synced_folder "sites/", "/var/www/sites", nfs: true

  config.vm.provider "virtualbox" do |v|
    v.name = "LAMP Dev box"
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
end

