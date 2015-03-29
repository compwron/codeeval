File.open(ARGV[0]).each_line do |line|
  line.strip! 
  next if line.empty? || line == "\n"
  places = line.split(' ')
  n = places.shift
  p n
  p places
  pi = places.map {|place| 
  	place.to_i
  }
  sp = pi.map{|i| i - pi.min} 
  sp.each_with_index{|j, index|
  	p index
  	p j
  }
 end
