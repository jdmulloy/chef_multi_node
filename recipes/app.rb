include_recipe 'wordpress-cluster::_aws_Settings'

machine 'wordpress-app' do
  tag 'wordpress-app' do
  recipe 'wordpress-simple::app'
  action :converge
  converge true
  attributes lazy {{
    'wordpress-simple' => {
      'dbhost' => search(:node, 'tag:wordpress-database'.first['ipaddress']
    }
  }}
end
