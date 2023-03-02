#!/usr/bin/env ruby
argmt = ARGV[0]
if ( argmt.match /School/ )
  argmt = argmt.gsub(/[^School]/, "")
  puts "#{argmt}"
else
  puts ""
end
