# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/jammy64"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.linked_clone = true
  end

  config.vm.define "gondor" do |app|
    app.vm.hostname = "gondor.test"
    app.vm.network :private_network, ip: "192.168.60.4"
  end

  config.vm.define "feanor" do |app|
    app.vm.hostname = "feanor.test"
    app.vm.network :private_network, ip: "192.168.60.5"
  end
end
