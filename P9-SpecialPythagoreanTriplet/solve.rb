#! /usr/bin/env ruby

class RightTriangle
  attr_reader :a, :b, :c

  def initialize(a, b); @a = a; @b = b; @c = Math.sqrt(a*a+b*b) end
  def perimeter; a + b + c end
end

K = 500
triangles = []

for a in 1..K do
  for b in 1..K do
    triangles <<= RightTriangle.new(a, b)
  end
end
puts "Found #{triangles.size} right triangles"
t = triangles.find { |t| t.perimeter == 1000 }
puts "Solution found: A=#{t.a}, B=#{t.b}, C=#{t.c}"
puts t.a * t.b * t.c
