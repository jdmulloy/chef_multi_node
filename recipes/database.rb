require 'chef/provisioning'

include_recipe 'wordpress-cluster::_aws_settings'

machine 'wordpress-database' do
  tag 'wordpress-database'
  recipe 'wordpress-simple::database'
  action :converge
end
