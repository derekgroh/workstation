#
# Cookbook Name:: workstation
# Recipe:: gems
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# List of gems in addition to ChefDK for local development

node['workstation']['gems'].each do |gem|
  chef_gem gem do
    compile_time false if respond_to?(:compile_time)
  end
end