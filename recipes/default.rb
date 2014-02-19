package "php5-fpm"

template "/etc/init.d/php5-fpm" do
  source "php5-fpm.init.erb"
  owner "root"
  group "root"
  mode "0755"
  notifies :restart, "service[php5-fpm]"
end

service "php5-fpm" do
  action    [:enable, :start]
  supports  [:start, :restart, :reload, :stop]
end

template "/etc/php5/fpm/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, resources(:service => "php5-fpm"), :immediately
end

template "/etc/php5/fpm/pool.d/www.conf" do
  source "www.conf.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, resources(:service => "php5-fpm"), :immediately
end

node['php-fpm']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end
