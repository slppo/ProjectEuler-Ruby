#! /usr/bin/env ruby

K = 100_000
N = 600_851_475_143

def prime?(n)
  if n <= 1 then return false end
  if n == 2 then return true end
  if (n & 1) == 0 then return false end
  (3..(Math.sqrt(n)+1)).step(2) { |i| if n % i == 0 then return false end }
  return true
end

primes = (1..K).to_a.reject { |i| !prime?(i) }
primes.reverse_each do |i|
  if N % i == 0
    puts i
    exit 0
  end
end
