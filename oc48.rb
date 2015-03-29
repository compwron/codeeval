def ss_of product
	
end

File.open(ARGV[0]).each_line.map { |line|
  line.strip! 
  # Jack Abraham,John Evans,Ted Dziuba;iPad 2 - 4-pack,Girl Scouts Thin Mints,Nerf Crossbow
  customers, products = line.split(';')
  customers = customers.split(',')
  products = products.split(',')

  products.map {|p| [p, _ss_of(p)]}
 }



1. If the number of letters in the product's name is even then the SS is the number of vowels (a, e, i, o, u, y) in the customer's name multiplied by 1.5. 