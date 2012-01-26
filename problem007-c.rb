#!/usr/bin/ruby

class Fixnum
   def is_prime?
     ((("1" * self) =~ /^1$|^(11+?)\1+$/) == nil)
   end
end

def find_prime
counter = 1
prime_counter = 0
	while prime_counter < 10001
		if counter.is_prime?
			puts counter
			prime_counter += 1
		end
		counter += 1
	end
end

find_prime

