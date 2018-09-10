#
# Cookbook:: Java
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#

remote_file '/opt/jdk1.7.0_79.tar.gz' do
  source 'http://54.158.94.198/files/jdk1.7.0_79.tar.gz'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'extract_some_tar' do
  command '/usr/bin/tar xzvf jdk1.7.0_79.tar.gz'
   cwd '/opt'
end

bash "insert_line" do
  user "root"
  code <<-EOS
  echo "export JAVA_HOME=/opt/jdk1.7.0_79" >> /home/user/.bashrc
  echo "export PATH=$PATH:/opt/jdk1.7.0_79/bin" >> /home/user/.bashrc
  EOS
end
