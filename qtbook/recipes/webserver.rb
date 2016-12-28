#
# Cookbook:: .
# Recipe:: webserver
#
# Copyright:: 2016, The Authors, All Rights Reserved.
package  ['installation']['javainstall'] do
	action :install
end
package  ['installation']['applicationserver'] do
	action :install
end
cookbook_file ['applicationserver']['warlocation'] do
 source 'benefits.war'
 owner 'root'
 group 'root'
 mode '0755'
end
service ['installation']['applicationserver'] do 
	action :restart
end