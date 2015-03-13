def perm word
	word.chars.permutation.map(&:join).sort.join(',')
end

def should_be actual, expected
	if actual != expected
		puts "nope, #{actual} is not #{expected}"	
	end
end

should_be(perm('hat'), "aht,ath,hat,hta,tah,tha")
should_be(perm2('hat'), "aht,ath,hat,hta,tah,tha")






# CHALLENGE DESCRIPTION:

# Write a program which prints all the permutations of a string in alphabetical order. We consider that digits < upper case letters < lower case letters. The sorting should be performed in ascending order.

# INPUT SAMPLE:

# Your program should accept a file as its first argument. The file contains input strings, one per line.

# For example:


# 1
# 2
# 3
# hat
# abc
# Zu6
# OUTPUT SAMPLE:

# Print to stdout the permutations of the string separated by comma, in alphabetical order.

# For example:


# 1
# 2
# 3
# aht,ath,hat,hta,tah,tha
# abc,acb,bac,bca,cab,cba
# 6Zu,6uZ,Z6u,Zu6,u6Z,uZ6
