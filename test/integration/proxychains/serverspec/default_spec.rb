# -*- coding: utf-8 -*-

require 'serverspec'
set :backend, :exec

describe package('proxychains') do
  it { should be_installed }
end

describe file('/etc/proxychains.conf') do
  it { should be_file }
  its(:content) { should match(/^random_chain$/) }
  its(:content) { should match(/^chain_len = 42$/) }
  its(:content) { should match(/^quiet_mode$/) }
  its(:content) { should match(/^proxy_dns$/) }
  its(:content) { should match(/^tcp_read_time_out 1337$/) }
  its(:content) { should match(/^tcp_connect_time_out 42$/) }
  its(:content) { should match(/^socks4 127.0.0.1 9050$/) }
  its(:content) { should match(/^http 192.168.13.37 8080$/) }
end
