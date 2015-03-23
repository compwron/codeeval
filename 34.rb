File.open(ARGV[0]).each_line.map { |line|
  line.strip! 
  next if line.empty? || line == "\n"
  
  nums, sum = line.split(';')
  inums = nums.split(',').map(&:to_i)
  isum = sum.to_i
  pairs = []
  inums.each {|i|
  	inums.each {|j|
  		if i + j == isum && inums.count(i) == 1
  			pairs << [i, j] 
  		end
  	}
  }

  if pairs.empty?
  	puts "NULL"
  else
  	puts pairs.map{|p| p.sort}.sort_by{|p| p.first }.uniq.map{ |p| p.join(',')}.join(';')
  end
 }
