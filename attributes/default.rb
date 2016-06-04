# override the create_profile setting from the winbox cookbook
default['winbox']['create_profile'] = false
# packages to install
default['workstation']['packages'] = ['7zip',
                                      'winmerge',
                                      'sysinternals',
                                      'vagrant',
                                      'packer',
                                      'virtualbox',
                                      'chefdk',
                                      'notepadplusplus'
                                     ]
# gems to install
default['workstation']['gems'] = ['kitchen-pester',
                                  'kitchen-hyperv',
                                  'kitchen-dsc',
                                  'pry'
                                 ]
# git repositories to start with
default['workstation']['git_repos'] = {
  'chef'              => ['chef'],
  'opscode-cookbooks' => ['iis',
                          'powershell',
                          'sql_server',
                          'windows'
                         ],
  'powershellorg'     => ['cActiveDirectory',
                          'cNetworking',
                          'cWebAdministration',
                          'DSC',
                          'StackExchangeResources'
                         ],
  'TAMUArch'          => ['cookbook.windows_ad',
                          'cookbook.windows_dhcp',
                          'cookbook.windows_print'
                         ],
  'derekgroh'         => ['packer-templates',
                          'packer-windows'
                         ]
}

# location of the source directory
default['workstation']['source_destination'] = 'd:/cookbooks'

# vagrant plugins
default['workstation']['vagrant_plugins'] = ['vagrant-omnibus',
                                             'vagrant-rdp',
                                             'vagrant-scp'
                                            ]
