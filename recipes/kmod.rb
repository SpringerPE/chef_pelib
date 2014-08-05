#
# Cookbook Name:: pelib
# Recipe:: kmod
#
# Copyright (C) 2014 Jose Riguera, Springer SBM
# 

class ::Chef::Recipe
  include PElib
end

Chef::Log.info("Installing dummy module ...")
number = 1
pelib_kmod 'dummy' do
   action :install
   parameters ["numdummies=#{number}"]
end

