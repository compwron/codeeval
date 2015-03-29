File.open(ARGV[0]).each_line do |line|
  line.strip! 
  next if line.empty? || line == "\n"

  a, b = line.split('|')
  positions = b.split(' ').map(&:to_i)
  puts positions.map {|i| a[i - 1]}.join
end
