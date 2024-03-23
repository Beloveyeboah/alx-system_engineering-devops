#!/usr/bin/pup
# this install flask with version 2.1.0 on the server

package { 'flask':
  ensure => '2.1.0',
  provider => 'pip3',
}

package { 'werkzeug':
  ensure => '2.1.1',
  provider => 'pip3',
}
