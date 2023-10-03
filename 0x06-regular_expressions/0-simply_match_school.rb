#!/usr/bin/env ruby
# the script accepts one argument and pass it to a regular expression matching method

args = ARGV[0]

puts args.scan(/School/).join
