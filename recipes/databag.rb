#
# Cookbook Name:: pelib
# Recipe:: databag
#
# Copyright (C) 2014 Jose Riguera, Springer SBM
# 

### Example how to use the databag library

class ::Chef::Recipe
  include PElib
end

if node[:pelib][:bag_name]
  begin
    databag = node[:pelib][:data_bag]
    bagname = node[:pelib][:bag_name]
    environment = node[:pelib][:environment]
    set_databag('pelib', databag, bagname, environment)
  rescue
    Chef::Application.fatal!('Something was wrong while processing data_bag!', 1)
  end
end

