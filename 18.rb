File.open(ARGV[0]).each_line do |line|
  line.strip! && next if line.empty? || line == "\n"
   x, n = line.split(',')
   p (1..x.to_i).select {|mult|
   	n.to_i * mult > x.to_i
   }.first * n.to_i
 end
