#
# Cookbook:: testcookbook
# Recipe:: demorecie
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/myfile1' do
 content "First file"
 action :create
end
