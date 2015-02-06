# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "twieschalla"
client_key               "#{current_dir}/twieschalla.pem"
validation_client_name   "test151234-validator"
validation_key           "#{current_dir}/test151234-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/test151234"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]
