File.open(ARGV[0]).each_line do |line|
  line.strip! && next if line.empty? || line == "\n"

  upper = true
  puts line.chars.map {|l|
  	unless [' ', ':', '.', "'", ','].include? l
  		upper ? l.upcase! : l.downcase
  		upper = !upper
  	end
  	l
  }.join
 end
