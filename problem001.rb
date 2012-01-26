#!/usr/bin/ruby

n1 = 1
n2 = 2
float = 0
sum = 0

while n1 < 4000000
	puts n1
	sum = sum + n1 if n1 % 2 == 0
	float = n2
	n2 += n1
	n1 = float
end
puts "The Sum is #{sum}"
puts sum
	
