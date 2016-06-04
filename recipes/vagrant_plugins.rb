#
# Cookbook Name:: workstation
# Recipe:: vagrant_plugins
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# List of vagrant plugins for local development

node['workstation']['vagrant_plugins'].each do |plugin|
  powershell_script "vagrant plugin install #{plugin}" do
    code "c:\\HashiCorp\\Vagrant\\bin\\vagrant.exe plugin install #{plugin}"
  end
end
