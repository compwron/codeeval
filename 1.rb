File.open(ARGV[0]).each_line do |line|
  line.strip! && next if line.empty?
  x, y, n = line.split
  p (1..n.to_i).map {|i|
  	f = i % x.to_i == 0 ? 'F' : ''
  	b = i % y.to_i == 0 ? 'B' : ''
  	f + b == '' ? i : f + b
  }.join(' ')
end

# 3 5 10
# 2 7 15

# 1 2 F 4 B F 7 8 F B
# 1 F 3 F 5 F B F 9 F 11 F 13 FB 15