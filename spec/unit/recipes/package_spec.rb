#
# Cookbook Name:: workstation
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'vim::package' do
  package_checks = {
    'ubuntu' => {
      '12.04' => ['vim'],
      '14.04' => ['vim']
    },
    'debian' => {
      '7.0' => ['vim'],
      '7.1' => ['vim']
    },
    'redhat' => {
#      '6.3' => ['vim-minimal', 'vim-enhanced']
    }
  }

  package_checks.each do |platform, versions|
    versions.each do |version, packages|
      packages.each do |package_name|

        it "should install #{package_name} on #{platform} #{version}" do
          chef_runner = ChefSpec::SoloRunner.new(platform: platform, version: version)
          chef_runner.converge(described_recipe)

          expect(chef_runner).to install_package(package_name)
        end

      end
    end
  end
end
