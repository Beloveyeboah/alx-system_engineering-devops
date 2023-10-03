#!/usr/bin/env ruby
# the script matches a regular expresssion in ruby
check = ARGV[0]
puts check.scan(/\A[0-9]{10}\z/).join
