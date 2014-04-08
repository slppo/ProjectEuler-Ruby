#! /usr/bin/env ruby

def prime?(n)
  if n <= 1 then return false end
  if n == 2 then return true end
  if (n & 1) == 0 then return false end
  (3..(Math.sqrt(n)+1)).step(2) { |i| if n % i == 0 then return false end }
  return true
end

i = 3
n_primes = 1
loop do
  if prime?(i)
    n_primes += 1
    if n_primes == 10001
      puts i
      exit 0
    end
  end
  i += 2
end
