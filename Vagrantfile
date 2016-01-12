# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

  config.vm.box = "jeqo/oracle-linux-6"

  config.vm.network :private_network, ip: "192.168.56.5"

  config.vm.network "forwarded_port", guest: 1521, host: 1525

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 1
    vb.memory = "1500"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "test-create-instance-oracle-db-11g-ol6.yml"
  end

end
