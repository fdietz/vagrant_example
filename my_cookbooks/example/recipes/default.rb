# install package via apt-get
package "curl"

# run bash script
bash "ls -lh" do
  cwd = "/tmp"
  code <<-EOF
  ls -lh
  EOF
end

# create file based on template
template "/tmp/hello_world.txt" do
  mode "0644"
  source "hello_world.erb"
  not_if { File.exists?("/tmp/hello_world.txt") }
end