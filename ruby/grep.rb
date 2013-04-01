#!/usr/bin/ruby

ARGV.length == 2 or raise ArgumentError.new("Must pass file and string")

p File.new(ARGV[0]).readlines.grep(/#{ARGV[1]}/)
  
