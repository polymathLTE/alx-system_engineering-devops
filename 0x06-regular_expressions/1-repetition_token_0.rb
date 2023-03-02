#!/usr/bin/env ruby
arg = ARGV[0]
if ( arg.match /hbt{2,5}n/ )
  arg = arg.gsub(/[^hbt{2,5}n]/, "")
  puts "#{arg}"
else
  puts ""
end
