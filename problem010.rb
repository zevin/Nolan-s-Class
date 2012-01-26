#!/usr/bin/ruby
require 'benchmark'
require 'is_prime'

def find_prime
	counter = 2
	sum = 0
	while counter < 2_000_000
		if counter.is_prime?
			sum += counter
		end
		counter += 1
	end
	return $primes.uniq.reduce(:+)
end

puts Benchmark.measure { puts find_prime }