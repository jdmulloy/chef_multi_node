#
# Cookbook Name:: wordpress-cluster
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

include_recipe 'wordpress-cluster::database'
include_recipe 'wordpress-cluster::app'
include_recipe 'wordpress-cluster::lb'
