#!/usr/bin/env ruby
arg = ARGV[0]
if ( arg.match /[A-Z]/ )
  arg = arg.gsub(/[^A-Z]/, "")
  puts "#{arg}"
else
  puts ""
end
