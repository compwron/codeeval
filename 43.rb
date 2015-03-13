File.open(ARGV[0]).each_line do |line|
	line.strip! && next if line.empty?

	ns = line.split.map(&:to_i)
	n = ns.shift
	p (0...ns.length - 1).map {|i|
		(ns[i + 1] - ns[i]).abs
	} == (n - 1).downto(1).to_a ? 'Jolly' : 'Not jolly'
end