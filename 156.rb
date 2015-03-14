def asd line
  # line.strip! && next if line.empty? || line == "\n"

  upper = true
  puts line.chars.map {|l|
  	if [' ', ':', '.', "'", ','].include? l
  		l
  	else
  		upper ? l.upcase! : l.downcase
  		upper = !upper
  		l
  	end
  }.join
 end
# end

result_lines = ['To Be, Or NoT tO bE: tHaT iS tHe QuEsTiOn.',
"WhEtHeR 'tIs NoBlEr In ThE mInD tO sUfFeR.",
'ThE sLiNgS aNd ArRoWs Of OuTrAgEoUs FoRtUnE.',
'Or To TaKe ArMs AgAiNsT a SeA oF tRoUbLeS.',
'AnD bY oPpOsInG eNd ThEm, To DiE: tO sLeEp.']

lines = [
"To be, or not to be: that is the question.",
"Whether 'tis nobler in the mind to suffer.",
"The slings and arrows of outrageous fortune.",
"Or to take arms against a sea of troubles.",
"And by opposing end them, to die: to sleep."
]

def should_be actual, expected
	if actual != expected
		puts "nope, \n#{actual}         is not \n#{expected}"	
	end
end


(0..lines.size - 1).each {|i|
	should_be(asd(lines[i]), result_lines[i])
}


# File.open(ARGV[0]).each_line do |line|
#   line.strip! && next if line.empty? || line == "\n"

#   upper = true
#   puts line.chars.map {|l|
#   	upper ? l.upcase! : l.downcase
#   	upper = !upper
#   	l
#   }.join
#  end
