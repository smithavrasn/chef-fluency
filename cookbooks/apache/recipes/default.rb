#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'httpd' do
end

service 'httpd' do
action [:enable , :start]
end
include_recipe 'apache::webites.rb'
