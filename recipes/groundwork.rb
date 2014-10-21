#
# Cookbook Name:: tilequeue
# Recipe:: groundwork
#

# dev packages required by python packages
%w(python-dev libgeos-dev libpq-dev).each do |p|
  package p
end

# all tilequeue config files will end up here
# use tilestache user/group
directory node[:tilequeue][:cfg_path] do
  action :create
  owner node[:tilequeue][:tilestache][:user]
  group node[:tilequeue][:tilestache][:group]
end
