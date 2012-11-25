Vagrant::Config.run do |config|
  config.vm.box = "lucid32"

  # only accessible on this machine
  config.vm.network :hostonly, "33.33.33.10"

  # /vagrant in the virtual machine points to our local directory
  config.vm.share_folder "v-root", "/vagrant", ".", :nfs => true

  # /var/www should point to our local ./www directory
  config.vm.share_folder "v-web", "/var/www", "./www", :nfs => true

  # open in your browser http://localhost:8080
  config.vm.forward_port 80, 8080

  # update packages before installing recipes
  config.vm.provision :shell, :inline => "apt-get update --fix-missing"

  config.vm.provision :chef_solo do |chef|
    # cookbooks managed by Cheffile and local my_cookbooks
    chef.cookbooks_path = ["cookbooks", "my_cookbooks"]

    chef.add_recipe "apache2"
    chef.add_recipe "example"

    # can be accessed with: node[:example_key]
    chef.json = {
      :example_key => "example_value"
    }
  end
end
