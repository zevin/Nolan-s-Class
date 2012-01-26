#!/usr/bin/ruby
require 'benchmark'

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

def find_prime
counter = 2
prime_counter = 0
	while prime_counter < 10000
		if counter.is_prime?
			prime_counter += 1
		end
		counter += 1
	end
	return counter - 1
end

puts Benchmark.measure { puts find_prime }