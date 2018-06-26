#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd'
file '/var/www/html/index.html' do
 content  "<h1>Hello, world!</h1>
<h2> HOSTNAME: #{node['fqdn']}</h2>
<h2> IPADDRES: #{node['ipaddress']}</h2>"
end
service 'httpd' do
 action [ :enable, :start ]
end
