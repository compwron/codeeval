File.open(ARGV[0]).each_line do |line|
	line.strip! && next if line.empty? || line == "\n"
	puts line.split(' ').reverse.join(' ')
end
