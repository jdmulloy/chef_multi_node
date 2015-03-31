include_recipe 'wordpress-cluster::_aws_settings'

machine 'wordpress-app' do
  tag 'wordpress-app'
  recipe 'wordpress-simple::app'
  action :converge
  converge true
  attributes lazy {{
    'wordpress-simple' => {
      'dbhost' => search(:node, 'tags:wordpress-database').first['ipaddress']
    }
  }}
end
