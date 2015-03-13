
def make n
	return 0 if n.odd?
	(1..n).to_a
	
end

# 2 <= N <= 18
(2..18).each { |n|
	puts "n: #{n} and make(n): #{make(n)}"
}


def should_be actual, expected
	if actual != expected
		puts "nope, #{actual} is not #{expected}"	
	end
end

should_be(make(4), "1 2 3 4, 1 4 3 2")