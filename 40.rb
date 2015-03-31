File.open(ARGV[0]).each_line do |line|
  line.strip! 
  next if line.empty? || line == "\n"

  digits = line.split('').map(&:to_i)
  p digits.map {|i|
  	digits.count(i) == i
  }.all? ? 1 : 0
 end
