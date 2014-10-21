#
# Cookbook Name:: tilequeue
# Recipe:: runit
#

# supervise the tilequeue process with runit

include_recipe 'runit::default'

runit_service 'tilequeue' do
  action          [:enable, :start]
  log             true
  default_logger  true
  sv_timeout      30
end
