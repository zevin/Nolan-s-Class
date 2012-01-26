#!/usr/bin/ruby

def sum_of_divisors(number)
	sum = 0
	(1..number).each do |divisor|
 	sum += divisor if number % divisor == 0
 	end
 	return sum - number
end

def amicable(max=10000)
	sum = 0
	(1..max).each do |number|
		sum += number if number == sum_of_divisors(sum_of_divisors(number)) and number != sum_of_divisors(number)
	end
	return sum
end
puts "Enter Max Value"
max = gets.chomp.to_i
puts "Sum Equals: #{amicable(max)}"