# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

  config.vm.define "db" do |db|
    db.vm.box = "jeqo/oracle-database-11g"
    db.vm.hostname = "local-jeqo-db"

    db.vm.network :private_network, ip: "192.168.56.5"

    db.vm.network "forwarded_port", guest: 1521, host: 1525

    db.vm.provider "virtualbox" do |vb|
      vb.cpus = 1
      vb.memory = "1500"
      vb.name = "local-jeqo-db"
    end

    db.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "playbooks/local-jeqo-db.yml"
    end
  end

end
