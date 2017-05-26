#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'git'
if node['platform'] == 'windows'
  include_recipe 'workstation::repositories'
  include_recipe 'winbox::chocolatey_install'
  include_recipe 'winbox::powershell_dev'
  include_recipe 'winbox::readline'
  include_recipe 'winbox::editor'
  include_recipe 'winbox::console'
  include_recipe 'workstation::packages'
  include_recipe 'workstation::vagrant_plugins'
else
  include_recipe 'workstation::linux'
end
