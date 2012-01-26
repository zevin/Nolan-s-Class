#!/usr/bin/ruby
require 'factorial'

def weird
counter = 3
sum = 0
	while counter < 100_000
		temp = counter.to_s
		temp_sum = 0
		temp.to_s.length.times do |d|
			temp_sum += temp[d,1].to_i.factorial 
		end
		sum += counter if counter == temp_sum.to_i
		counter += 1
	end
	return sum
end
puts weird
