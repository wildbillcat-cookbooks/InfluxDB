#
# Cookbook Name:: InfluxDB
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# InfluxDB
#Time-Series Database
remote_file '/tmp/influxdb_0.12.2-1_amd64.deb' do
  source 'https://dl.influxdata.com/influxdb/releases/influxdb_0.12.2-1_amd64.deb'
  action :create
end

#Chronograf
#Data Visualization & Graphing
remote_file '/tmp/chronograf_0.12.0_amd64.deb' do
  source 'https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_0.12.0_amd64.deb'
  action :create
end

#Kapacitor
#Alerting & Data Processing
remote_file '/tmp/kapacitor_0.12.0-1_amd64.deb' do
  source 'https://s3.amazonaws.com/kapacitor/kapacitor_0.12.0-1_amd64.deb'
  action :create
end

#Now Install the Debian Packages
package 'influxdb' do
  action :install
  source '/tmp/influxdb_0.12.2-1_amd64.deb'
end

package 'chronograf' do
  action :install
  source '/tmp/chronograf_0.12.0_amd64.deb'
end

package 'kapacitor' do
  action :install
  source '/tmp/kapacitor_0.12.0-1_amd64.deb'
end

