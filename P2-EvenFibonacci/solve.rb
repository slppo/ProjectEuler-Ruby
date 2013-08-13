$fibTerms = [1, 2]

def fibonacci(n)	
	if n < $fibTerms.size then return $fibTerms[n] end
	while n >= $fibTerms.size do		
		$fibTerms << ($fibTerms[-1] + $fibTerms[-2])
	end
	return $fibTerms[-1]
end

Infinity = 1.0 / 0.0
for i in (0..Infinity) do
	fibonacci(i)
	if $fibTerms.last > 4_000_000 then break end
end

puts $fibTerms.inject(0) { |sum, e| if e.even? then sum + e; else sum end }