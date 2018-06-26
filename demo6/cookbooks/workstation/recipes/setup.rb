package 'nano'
package 'net-tools'

package 'tree' do
 action :install
end

package 'ntp' do
 action :install
end

file '/etc/motd' do
 content 'Property of Amit Vashist'
 owner 'root'
 group 'root'
end
