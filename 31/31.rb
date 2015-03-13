File.open(ARGV[0]).each_line do |line|
	line.strip!
	next if line.empty?
	word, char = line.split(',')
	p word.length - 1 - word.reverse.index(char)
end


# def rchar word, char
# 	word.length - 1 - word.reverse.index(char)
# end


# def rchar2 word, char
# 	word.chars.each_with_index.map.inject(-1) { |last_index, (wc, index)|
# 		last_index = wc == char ? index : last_index
# 	}
# end

# def should_be actual, expected
# 	if actual != expected
# 		puts "nope, #{actual} is not #{expected}"	
# 	end
# end

# should_be(rchar('Hello World', 'r'), 8)
# should_be(rchar('Hello CodeEval', 'E'), 10)


# should_be(rchar2('Hello World', 'r'), 8)
# should_be(rchar2('Hello CodeEval', 'E'), 10)

# should_be(rchar3('Hello World', 'r'), 8)
# should_be(rchar3('Hello CodeEval', 'E'), 10)

# # RIGHTMOST CHAR
# # CHALLENGE DESCRIPTION:

# # You are given a string 'S' and a character 't'. Print out the position of the rightmost occurrence of 't' (case matters) in 'S' or -1 if there is none. The position to be printed out is zero based.

# # INPUT SAMPLE:

# # The first argument will ba a path to a filename, containing a string and a character, comma delimited, one per line. Ignore all empty lines in the input file. E.g. 
# # Hello World,r
# # Hello CodeEval,E
# # OUTPUT SAMPLE:

# # Print out the zero based position of the character 't' in string 'S', one per line. Do NOT print out empty lines between your output. 
# # E.g.

# # 8
# # 10