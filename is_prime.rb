#!/usr/bin/ruby

$primes = [2,3,5]

class Fixnum
	def is_prime?
	sqrt = Math.sqrt(self)
		$primes.each do |prime|
			if self % prime == 0
				return false
			end
			if prime > sqrt
				$primes.push(self)
				return true
			end
		end
	end
end