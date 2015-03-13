File.open(ARGV[0]).each_line do |line|
	line.strip! && next if line.empty?

	ns = line.split.map(&:to_i)
	n = ns.shift
	a = (0...ns.length - 1).map {|i|
		(ns[i + 1].abs - ns[i].abs).abs
	} 
	real_downto = (n - 1).downto(1).to_a 
	p (a == real_downto || a == real_downto.reverse) ? 'Jolly' : 'Not jolly'
end