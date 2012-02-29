Vagrant::Config.run do |config|
    config.vm.box = "lucid32"
    config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
    config.vm.forward_port 80, 8080
    config.vm.forward_port 3306, 3306
    config.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = ["chef-cookbooks/picked-from-opscode", "chef-cookbooks/custom"]
        chef.add_recipe "lamp"
    end
end
