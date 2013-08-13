multiplesOf3 = (1..1000/3).to_a.map { |e| e * 3 }
multiplesOf5 = (1...1000/5).to_a.map { |e| e * 5 }
multiples = (multiplesOf3 + multiplesOf5).uniq
puts multiples.inject(:+)