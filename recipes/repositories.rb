#
# Cookbook Name:: workstation
# Recipe:: repositories
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# List of your favorite repos

node['workstation']['git_repos'].each do |key, value|
  directory "#{node['workstation']['source_destination']}/github/#{key}" do
    recursive true
  end

  value.each do |repo|
    git "#{node['workstation']['source_destination']}/github/#{key}/#{repo}" do
      repository "https://github.com/#{key}/#{repo}.git"
      revision 'master'
      checkout_branch 'current'
    end
  end
end
