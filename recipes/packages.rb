#
# Cookbook Name:: workstation
# Recipe:: packages
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# List of packages in addition to ChefDK for local development

include_recipe 'chocolatey'

node['workstation']['packages'].each do |package|
  chocolatey_package "Install #{package}" do
    package_name package
  end
end
