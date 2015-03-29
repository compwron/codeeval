File.open(ARGV[0]).each_line do |line|
  line.strip! 
  next if line.empty? || line == "\n"

  puts line.split('').map(&:to_i).each_with_index.map{|num, index| 
  	num ** (index + 1)
  }.inject(&:+) == line.to_i ? 'True' : 'False'
 end
