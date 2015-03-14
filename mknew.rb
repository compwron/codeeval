exit unless ARGV.size == 1

n = ARGV[0]
f = "#{n}.rb #{n}_data.txt"
`touch #{f}`

`echo "File.open(ARGV[0]).each_line do |line|\n  line.strip! && next if line.empty? || line == \\"\\n\\"\n end" > #{n}.rb`

cmd = "ruby #{f}"
puts cmd
