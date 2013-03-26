#!/usr/bin/ruby

number = rand(100)
while true
    line = gets().chomp().to_i
    if line < number
	puts "too low"
    elsif line > number
	puts "too high"
    else
	puts "Yeah!"
    end
end
