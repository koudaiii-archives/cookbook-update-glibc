#
# Cookbook Name:: security_check_glibc
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

case node[:platform]
when "redhat", "centos", "amazon", "oracle"
  include_recipe 'yum-epel'
when "ubuntu", "debian"
  include_recipe 'apt'
end

package "glibc" do
  action :upgrade
end

reboot "now" do
  action :reboot_now
  reason "Cannot continue Chef run without a reboot."
  delay_mins 2
end
