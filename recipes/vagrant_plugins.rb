#
# Cookbook Name:: workstation
# Recipe:: vagrant_plugins
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# List of vagrant plugins for local development

node['workstation']['vagrant_plugins'].each do |plugin|
  powershell_script "Install #{plugin}" do
    code "vagrant plugin install #{plugin}"
  end
end
