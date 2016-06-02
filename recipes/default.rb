#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'git'
include_recipe 'workstation::repositories'
include_recipe 'workstation::links'
include_recipe 'winbox::chocolatey_install'
include_recipe 'winbox::powershell_dev'
include_recipe 'winbox::readline'
include_recipe 'winbox::editor'
include_recipe 'winbox::console'
include_recipe 'winbox::git'
include_recipe 'workstation::packages'
include_recipe 'workstation::vagrant_plugins'
