#
# Cookbook:: testcookbook
# Recipe:: testrecipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'tree' do
  action :install
end
file '/myfile' do
  content "Hello"
  action :create
  owner 'root'
  group 'root'
end
