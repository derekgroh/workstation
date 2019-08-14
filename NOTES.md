# Notes/Useful Items

## Debug Active Attributes

```bash
  > chef-shell -z
  chef > attributes
  chef:attributes > default["authorized_keys"]
  chef:attributes > node["packages"]
```

## Chef Provisioning
https://docs.chef.io/provisioning.html

## knife bootstrap windows
https://docs.chef.io/knife_bootstrap.html

## Chef Policyfiles
https://docs.chef.io/policyfile.html
http://hedge-ops.com/policyfiles/

## Update Chef
https://docs.chef.io/install_omnibus.html

## kitchen

### Berkshelf

Use groups for integration tests

```
group :integration do
  cookbook 'docker_test', path: 'test/cookbooks/docker_test'
end
```

## chefspec

```
chef exec rspec --color -f documentation
```

## Git

```
graph = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset %C(cyan)(%an)%Creset' --date=relative
```

```
pr = "!_git_pr() { git fetch origin pull/$1/head:pr-$1 && git checkout pr-$1; }; _git_pr"
```

```
up = "!f() { git stash && git pull --rebase origin master && git stash pop; }; f"
```

use `git pr 117`

### hub
https://hub.github.com/

## Linting

```
chef exec rspec --color --format d 
```

```
cookstyle .
```

```
foodcritic .
```

## Delivery

```
delivery local lint
```

```
delivery local syntax
```

```
delivery local all
```