# -*- coding: utf-8 -*-
#
# Cookbook Name:: proxychains
# Attributes:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['proxychains']['chain_type'] = 'strict'
default['proxychains']['chain_len'] = nil
default['proxychains']['quiet_mode'] = false
default['proxychains']['proxy_dns'] = true
default['proxychains']['tcp_read_time_out'] = 15000
default['proxychains']['tcp_connect_time_out'] = 8000
default['proxychains']['proxy_list'] = ['socks4 127.0.0.1 9050']
