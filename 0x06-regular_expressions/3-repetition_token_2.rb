#!/usr/bin/env ruby
arg = ARGV[0]
if ( arg.match /hbt{1,4}n/ )
  arg = arg.gsub(/[^hbt{1,4}n]/, "")
  puts "#{arg}"
else
  puts ""
end
