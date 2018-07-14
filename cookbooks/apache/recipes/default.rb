#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debain"
	package = "apache2"
end

 
package 'apache' do
	package_name package
end

service 'apache' do
	service_name 'apache'
	action [:enable , :start]
end

