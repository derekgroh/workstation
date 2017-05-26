#
# Cookbook Name:: workstation
# Recipe:: linux
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'git'
# include_recipe 'workstation:packages'
=begin
yum_repository 'virtualbox' do
  description 'Virtualbox'
  baseurl 'http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo'
  action :add
end
=end
execute 'Virtualbox Pre-Install' do
  command <<-EOH
    cd etc/yum.repos.d/
    wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
    yum update -y
  EOH
  not_if File.exist?('/etc/repos.d/virtualbox.repo')
end

execute 'Install ChefDK' do
  command <<-EOH
    wget https://packages.chef.io/files/stable/chefdk/1.2.22/el/6/chefdk-1.2.22-1.el6.x86_64.rpm
    yum localinstall chefdk-1.2.22-1.el6.x86_64.rpm
  EOH
#  only_if package('chefdk').exists?
end

execute 'Install Vagrant' do
  command <<-EOH
    wget https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.rpm
    yum localinstall vagrant_1.9.1_x86_64.rpm
  EOH
#  only_if package('vagrant').exists?
end

node['workstation']['nix_packages'].each do |package|
  package "Install #{package}" do
    action :install
    name "#{package}"
  end
end
# Get files
=begin
yum install chefdk
yum install atom
yum install git
yum install nano

cd etc/yum.repos.d/
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
yum update -y
yum install binutils qt gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms
yum install VirtualBox-5.1

wget https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.rpm
yum localinstall vagrant_1.9.1_x86_64.rpm

vagrant plugin install vagrant-winrm
=end
  