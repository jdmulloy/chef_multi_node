include_recipe 'worpress-cluster::_aws_settings'

machine_batch do
  machines search(:node, '*:*').map { |n| n.name }
  action :destroy
end
