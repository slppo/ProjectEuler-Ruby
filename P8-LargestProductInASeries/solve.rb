#! /usr/bin/env ruby

number = IO.read("number.txt")
greatest = 0
for i in 0..(number.size-5)
  product = 1
  for j in 0...5
    product *= number[i+j].to_i
  end
  if product > greatest then greatest = product end
end
puts greatest
