package 'nano'
package 'net-tools'

package 'tree' do
 action :install
end

package 'ntp' do
 action :install
end

file '/etc/motd' do
 content "Property of Amit Vashist!!!
 HOSTNAME: #{node['fqdn']}
 IPADDRESS:#{node['ipaddress']}
 CPU: #{node['cpu']['0']['model_name']}
 MEMORY: #{node['memory']['total']}"
 owner 'root'
 group 'root'
end
