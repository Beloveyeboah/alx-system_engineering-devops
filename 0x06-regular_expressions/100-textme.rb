#!/usr/bin/env ruby
# the script matches a regular expresssion in ruby
check=ARGV[0]
puts check.scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
