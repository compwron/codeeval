File.open(ARGV[0]).each_line do |line|
  line.strip! && next if line.empty? || line == "\n"
  o, p, q, r = line.split(' ')
  o = o.to_i
  p = p.to_i
  q = q.to_i
  r = r.to_i

  result = ''
  if o == q && p == r
  	result << 'here'
  end
  if q < o
  	result << 'S'
  end
  if r > p
  	result << 'N'
  end
  if q > o
  	result << 'E'
  end	
  if r < p
  	result << "W"
  end
  puts result
end
