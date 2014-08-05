name             'pelib'
maintainer       'Springer Platform Engineering'
maintainer_email 'platform-engineering@springer.com'
license          'Apache 2.0'
description      'Base Cookbook library'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ debian ubuntu centos redhat  }.each do |os|
  supports os
end

