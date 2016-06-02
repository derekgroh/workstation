#
# Cookbook Name:: workstation
# Recipe:: packages
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# List of packages in addition to ChefDK for local development

node['workstation']['packages'].each do |package|
  powershell_script "Install #{package}" do
    code "choco install -y #{package}"
    not_if "(choco list -l) -match '#{package}'"
  end
end
