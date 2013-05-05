#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "ncurses" do
    action :install
end

package "ncurses-devel" do
    action :install
end

git "/usr/local/src/sl" do
    repository git://github.com/mtoyoda/sl.git
    action :sync
end 

execute "install_sl" do
    cwd "/usr/local/src/sl"
    command <<-EOH
        make
        cp sl /usr/sbin/sl
    EOH
end


