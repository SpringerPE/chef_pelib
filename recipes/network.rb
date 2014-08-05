#
# Cookbook Name:: pe_network
# Recipe:: network
#
# Copyright (C) 2014 Jose Riguera, Springer SBM
# 

### example how to use network functions

class ::Chef::Recipe
  include PElib
end
Chef::Resource::RubyBlock.send(:include, PElib)

ruby_block "update_udev" do
  block do
    Chef::Log.info("Creating udev rule: #{device} <~> #{mac}")
    mac = "0a:00:27:00:00:04"
    device = "eth0"
    net_udev(mac, device, true)
  end
end
