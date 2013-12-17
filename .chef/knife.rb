# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "dcollazo"
client_key               "#{current_dir}/dcollazo.pem"
validation_client_name   "1980-validator"
validation_key           "#{current_dir}/1980-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/1980"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
