require 'chef/provisioning/aws_driver'

with_driver 'aws'

with_machine_options(
  bootstrap_options: {
    instance_type: node['wordpress-cluster']['aws']['flavor'],
    key_name: node['wordpress-cluster']['aws']['key_name'],
    security_group_ids: node['wordpress-cluster']['aws']['security_group_ids'],
  },
  ssh_username: node['wordpress-cluster']['aws']['ssh_username'],
  image_id:     node['wordpress-cluster']['aws']['image_id']
)

aws_key_pair node['wordpress-cluster'['aws']['key_name']
