include_recipe 'wordpress-cluster::_aws_settings'

load_balancer 'josephm354-wp' do
  load_balancer_options :availability_zones => ['us-west-2a', 'us-west-2b', 'us-west-2c'],
    :listeners => [{
      :port => 80,
      :protocol => :http,
      :instance_port => 80,
      :instance_protocol => :http,
    }]
  machine ['wordpress-app']
end
