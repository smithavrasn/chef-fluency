#
# Cookbook:: postgressql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# 1.Install package
# 2.Execute when notified
# Enable and start the service
#
package 'postgresql-server' do
	 notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
         command 'postgresql-setup initdb'
	 action :nothing
end

service 'postgresql' do
	 action [:enable, :start]
end
