case node['platform']
when 'ubuntu', 'debian'
if node['platform_version'] == '16.04'
  default['installation']['javainstall'] = 'openjdk-8-jdk'
  default['installation']['applicationserver'] = 'tomcat8'
  default['applicationserver']['warlocation'] = '/var/lib/tomcat8/webapps/petclinic.war'
elsif node['platform_version'] == '14.04'
  default['installation']['javainstall'] = 'openjdk-7-jdk'
  default['installation']['applicationserver'] = 'tomcat7'
  default['applicationserver']['warlocation'] = '/var/lib/tomcat7/webapps/benefits.war'
end
when 'rhel', 'centos'
  default['installation']['applicationserver'] = 'tomcat'
  default['applicationserver']['warlocation'] = '/var/lib/tomcat8/webapps/benefits.war'
when 'suse'
  default['installation']['applicationserver'] = 'tomcat'
  default['applicationserver']['warlocation'] = '/var/lib/tomcat8/webapps/benefits.war'
end