#!/usr/bin/env ruby
# the script pass it to a regular expression matching method
check = ARGV[0]
puts check.scan(/hbt+n/).join
