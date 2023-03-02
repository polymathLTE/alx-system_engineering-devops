#!/usr/bin/env ruby
arg = ARGV[0]
if ( arg.match /^\d{10}$/ )
  puts "#{arg}"
else
  puts ""
end
