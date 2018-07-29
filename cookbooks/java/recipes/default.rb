#
# Cookbook:: java
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
node.default["java"]["install_flavor"] = "openjdk"
node.default["java"]["jdk_version"]    = "8"

include_recipe "java"
