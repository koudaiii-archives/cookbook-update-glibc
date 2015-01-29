cookbook-update-glibc
==================

### Overview

cookbook for update glibc.
CVE-2015-0235(GHOST)

* Japan
http://www.walbrix.com/jp/blog/2015-01-ghost.html

* English
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-0235

### Description

update glibc by Chef Solo.

* Attention. this cookbook need to reboot.

* Platform is Ubuntu and CentOS.

### Requirement

* cookbook 'build-essential'
* cookbook 'apt'
* cookbook 'yum-epal'

### Install

* Ruby 2.1.5 or later
* gem install bundler

### Usage

* bundle install

```bash
bundle install
```

* build berks

```bash
bundle exec berks vendor cookbooks
```

* provision server

```bash
bundle exec knife solo bootstrap YourServer
```

### Develop(Vagrant)

#### build and run test

* install virtualbox
* install vagrant

* bootstrapping

```bash
vagrant up
```

* add ssh config

```config
vagrant ssh-config >> ~/.ssh/config
```

* chanage Host

```
$ vim ~/.ssh/config
- Host default
+ Host webapp
```

* This Vagrant has been correspondence is complete.(glibc-2.12-1.149.el6_6.5.x86_64)

### Contribution
- Fork the this repository on GitHub
- Create a named feature branch (like add_component_x)
- Write your change
- If at all possible, write serverspec tests for your change and ensure they all pass
- Submit a pull request using GitHub
