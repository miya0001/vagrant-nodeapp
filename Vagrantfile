# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.provision "shell" do |s|
    s.inline     = "GIT_REPO=$1 bash /vagrant/setup.sh"
    s.args       = ENV['GIT_REPO']
    s.privileged = false
  end
end
