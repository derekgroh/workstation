#
# Cookbook Name:: workstation
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

begin
  include_recipe "vim::#{node['vim']['install_method']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn "A #{node['vim']['install_method']} recipe does not exist for
    the platform_family: #{node['platform_family']}"
end
