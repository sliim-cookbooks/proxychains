name 'proxychains'
maintainer 'Sliim'
maintainer_email 'sliim@mailoo.org'
license 'Apache-2.0'
description 'Installs/Configures proxychains'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 12.0' if respond_to?(:chef_version)
version '0.2.0'

recipe 'proxychains::default', 'Installs and configures proxychains'

supports 'debian'

source_url 'https://github.com/sliim-cookbooks/proxychains' if
  respond_to?(:source_url)
issues_url 'https://github.com/sliim-cookbooks/proxychains/issues' if
    respond_to?(:issues_url)
