#!/usr/bin/ruby
require 'benchmark'
require 'mathn'
puts "10001th Prime:"
prime_number = Prime.new
10000.times do |number|
	prime_number.next
end

puts Benchmark.measure { puts prime_number.next }
