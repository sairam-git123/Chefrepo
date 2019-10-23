#
# Cookbook:: apachecookbook
# Recipe:: apacherecipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end
file '/var/www/html/index.html' do
  content "This is Apache package"
  action :create
end
service 'httpd' do
  action [:enable, :start]
end
