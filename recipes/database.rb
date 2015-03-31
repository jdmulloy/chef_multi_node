require 'chef/provisioning'

include_recipie 'wordpress-cluster::_aws_settings'

machine 'wordpress-database' do
  tag 'wordpress-database'
  recipe 'wordpress-simple::database'
  action :converge
end
