#!/usr/bin/ruby

def sum_of_squares(max)
	counter = 1
	sum = 0
	while counter <= max
		square = counter**2
		sum += square
		counter += 1
	end
	return sum
end

def square_of_sums(max)
	counter = 1
	sum = 0
	while counter <= max
		sum += counter
		counter += 1
	end
	return sum**2
end
puts "The Square of the Sums is #{square_of_sums(100)}"
puts "The Sum of the Squares is #{sum_of_squares(100)}"
puts "The Difference is:"
puts square_of_sums(100) - sum_of_squares(100)