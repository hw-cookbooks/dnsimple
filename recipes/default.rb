#
# Cookbook Name:: dnsimple
# Recipe:: default
#
# Copyright 2012, Heavy Water Operations, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

%w{ build-essential libxml2-dev libxslt1-dev }.each do |p|
  package p do
    action :nothing
  end.run_action( :install )
end

chef_gem "fog" do
  version node['dnsimple']['fog_version']
end

require 'rubygems'
Gem.clear_paths
