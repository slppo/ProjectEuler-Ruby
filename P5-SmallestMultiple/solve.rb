#! /usr/bin/env ruby

def divisible?(n, k)
  n % k == 0
end

i = 2520
divisors = (1..20).to_a
loop do
  if divisors.all? { |j| divisible?(i, j) }
    puts i
    exit 0
  end
  i += 20
end
