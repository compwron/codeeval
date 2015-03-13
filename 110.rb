num_map = {'negative' => -1,
           'zero' =>0,
           'one' =>1,
           'two' =>2,
           'three' =>3,
           'four' =>4,
           'five' =>5,
           'six' =>6,
           'seven' =>7,
           'eight' =>8,
           'nine' =>9,
           'ten' => 10,
           'eleven' =>11,
           'twelve' =>12,
           'thirteen' =>13,
           'fourteen' =>14,
           'fifteen' =>15,
           'sixteen' => 16,
           'seventeen' => 17,
           'eighteen' => 18,
           'nineteen' => 19,
           'twenty' => 20,
           'thirty' => 30,
           'forty' => 40,
           'fifty' => 50,
           'sixty' => 60,
           'seventy' => 70,
           'eighty' => 80,
           'ninety' => 90,
           'hundred' => 100,
           'thousand' => 1000,
           'million' =>1000000
}

def calc num_map, line
	nums = line.split.map {|w|
    num_map[w]
  }
end

# def calc num_map, line
#   nums = line.split.map {|w|
#     num_map[w]
#   }#.reverse
#   return nums[0] if nums.size == 1
#   negative = nums.include? -1
#   nums.delete(-1)
#   puts "nums without negative: #{nums} is negative? #{negative}"
#   sum = 0
#   (0..nums.size/2 - 1).map {|pair|
#   	a = nums.shift
#   	b = nums.shift
#   	sum += a * b

#   	puts "pair: #{pair} a: #{a} b: #{b} sum: #{sum}"
#   }
#   sum += nums.pop
# end

File.open(ARGV[0]).each_line do |line|
  line.strip! && next if line.empty?
  p line
  p calc num_map, line
end

# 15
# -638
# 0
# 2000107





























