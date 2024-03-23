#!/usr/bin/pup
# this install flask with version 2.1.0 on the server

package { 'Flask':
  ensure => '2.1.0',
  name => 'flask',
  provider => 'pip3'
}

package { 'Werkzeug':
  ensure => '2.1.1',
  provider => 'pip3'
}
