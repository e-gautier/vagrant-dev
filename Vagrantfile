# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  # nodeJs
  config.vm.network "forwarded_port", guest: 3000, host: 3030, host_ip: "127.0.0.1"
  config.vm.synced_folder "shared", "/home/vagrant/shared"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.name = "vagrant_dev"
  end
  config.vm.provision "shell" do |s|
    s.path = "provision.sh"
    s.args = ENV['ENV']
  end
end