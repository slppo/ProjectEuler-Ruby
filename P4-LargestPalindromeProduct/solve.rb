#! /usr/bin/env ruby

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

max = { i: 0, j: 0, product: 0 }
for i in 500..999 do
  for j in 500..999 do
    if i * j > max[:product] and palindrome?(i*j)
      max[:i] = i; max[:j] = j; max[:product] = i*j
    end
  end
end

puts "#{max[:i]}x#{max[:j]}=#{max[:product]}"
