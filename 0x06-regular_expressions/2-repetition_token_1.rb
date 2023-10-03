#!/usr/bin/env ruby
# the script accepts one argument and pass it to a regular expression matching method
put ARGV[0].scan(\hbn\ or \hbtn\).join
