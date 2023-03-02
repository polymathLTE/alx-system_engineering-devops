#!/usr/bin/env ruby
arg = ARGV[0]
if ( arg.match /hb?tn/ )
  arg = arg.gsub(/[^hb?tn]/, "")
  puts "#{arg}"
else
  puts ""
end
