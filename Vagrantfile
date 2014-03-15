# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  bridge = ENV['VAGRANT_BRIDGE']
  bridge ||= 'eth0'
  env  = ENV['PUPPET_ENV']
  env ||= 'dev'

  config.vm.box = 'openbsd54_amd64_2' 
  # config.vm.network :public_network, :bridge => bridge
  config.vm.network :private_network, ip: "192.168.67.10", netmask: "255.255.255.0"
  config.vm.hostname = 'netflow.local'
  config.vm.guest=:openbsd
  config.vm.synced_folder ".", "/vagrant", :disabled => true
  config.vm.synced_folder ".", "/vagrant", type: "nfs" 

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', 2048, '--cpus', 2]
  end

  config.vm.provision "shell", inline: 'echo installpath=http://ftp3.usa.openbsd.org/pub/OpenBSD/5.4/packages/amd64/ > /etc/pkg.conf'
  config.vm.provision "shell", inline: 'cd /vagrant && ./run.sh'
end
