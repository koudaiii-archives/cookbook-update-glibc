#
# Cookbook Name:: security_check_glibc
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "build-essential::default"

#exploit code
template '/tmp/GHOST.c' do
  source 'GHOST.c'
  action :create
  not_if { File.exist?("/tmp/GHOST.c") }
end

bash 'Compile' do
  user        'root'
  cwd         '/tmp'
  code        "gcc GHOST.c -o GHOST"
  not_if { File.exist?("/tmp/GHOST") }
end
