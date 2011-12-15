#!/usr/bin/ruby

def homework(max=1000,a=3,b=5,counter=0)
	sum = 0
	while counter < max
	sum = sum + counter if counter % a == 0 || counter % b == 0
	counter = counter + 1
	end
return "The answer is #{sum}"
end

input = ""
until input == "quit"

	print "
This program will allow you to give a number range
and 2 numbers. It will then find the sum of all
the numbers divisible by the 2 numbers given between
the range.
(1) Begin
(2) Exit
"
	input = gets.chomp
	case input
		when '1' then
			print "Enter Range Minimum:"
			counter = gets.chomp.to_i
			print "Enter Max Value:"
			max = gets.chomp.to_i
			print "Enter First Number:"
			mod1 = gets.chomp.to_i
			print "Enter Second Number:"
			mod2 = gets.chomp.to_i
	
			puts homework(max,mod1,mod2,counter)
	
		when '2' then
			input = "quit"
		
		else
			puts "Invalid Option"
	end
end



