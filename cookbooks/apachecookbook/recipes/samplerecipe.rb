#
# Cookbook:: apachecookbook
# Recipe:: samplerecipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/robofile' do
  content "To get attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
execute "run a script" do
  command <<-EOH
  mkdir /saidir
  touch /saifile
  EOH
end
user "user1" do
  action :create
end
group "group1" do
  action :create
  members 'user1'
  append true
end
