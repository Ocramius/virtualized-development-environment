require_recipe "apt"
require_recipe "mysql::server"
require_recipe "php"
require_recipe "apache2"
require_recipe "apache2::mod_php5"

execute "disable-default-site" do
    command "sudo a2dissite default"
    notifies :reload, resources(:service => "apache2"), :delayed
end

web_app "application" do
    template "application.conf.erb"
    notifies :reload, resources(:service => "apache2"), :delayed
end
