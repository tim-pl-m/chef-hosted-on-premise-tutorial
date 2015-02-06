#
# Cookbook Name:: MyAzureCookbook
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "#{ENV['HOME']}/x.txt" do
  content 'HELLO WORLD'
end