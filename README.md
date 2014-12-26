proxychains Cookbook | [![Cookbook Version](https://img.shields.io/cookbook/v/proxychains.svg)](https://community.opscode.com/cookbooks/proxychains) [![Build Status](https://travis-ci.org/sliim-cookbooks/proxychains.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/proxychains) 
==============
This cookbook installs and configures proxychains.  

Requirements
------------
#### platforms
The following platforms and versions are tested and supported using Opscode's test-kitchen.  
- `Debian 7.6`

Attributes
----------
#### proxychains::default
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Description</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['proxychains']['chain_type']</tt></td>
<td>String</td>
<td>Chain type to use, possible values: dynamic, strict or random</td>
<td><tt>strict</tt></td>
</tr>
<tr>
<td><tt>['proxychains']['chain_len']</tt></td>
<td>Integer</td>
<td>Make sense only if random_chain</td>
<td><tt>nil</tt></td>
</tr>
<tr>
<td><tt>['proxychains']['quiet_mode']</tt></td>
<td>Boolean</td>
<td>Quiet mode, no output from library</td>
<td><tt>false</tt></td>
</tr>
<tr>
<td><tt>['proxychains']['proxy_dns']</tt></td>
<td>Boolean</td>
<td>Proxy DNS requests - no leak for DNS data</td>
<td><tt>true</tt></td>
</tr>
<tr>
<td><tt>['proxychains']['tcp_read_time_out']</tt></td>
<td>Integer</td>
<td>TCP read timeout</td>
<td><tt>15000</tt></td>
</tr>
<tr>
<td><tt>['proxychains']['tcp_connect_time_out']</tt></td>
<td>Integer</td>
<td>TCP connect timeout</td>
<td><tt>8000</tt></td>
</tr>
<tr>
<td><tt>['proxychains']['proxy_list']</tt></td>
<td>Array</td>
<td>Proxy list</td>
<td><tt>['socks4 127.0.0.1 9050']</tt></td>
</tr>
</table>

Usage
-----
#### proxychains::default
Just include `proxychains` in your node's `run_list`:  

```json
{
"name":"my_node",
  "run_list": [
    "recipe[proxychains]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sliim <sliim@mailoo.org> 

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
