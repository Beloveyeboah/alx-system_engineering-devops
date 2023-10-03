#!/usr/bin/env ruby
# the script accepts one argument and pass it to a regular expression
puts ARGV[0].scan(/hbt{2,6}n/).join
