puts File.open(ARGV[0]).each_line.map { |line|
  line.strip! && next if line.empty? || line == "\n"
   line.to_i
 }.inject(&:+)
