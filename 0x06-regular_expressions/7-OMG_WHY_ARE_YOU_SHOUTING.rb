#!/usr/bin/env ruby
# the script matches a regular expresssion in ruby
puts ARGV[0].scan(/[A-Z]/).join
