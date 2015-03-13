require 'set'

def permutations(word)
    _foo(word.chars)
end

def _foo characters
  return characters if characters.empty?
  first_char = characters.pop
  underlying = [first_char]
  characters.each do |character|
    new_set = Set.new
    underlying.each do |permutation|
      (0..permutation.length).each do |idx|
        new_set.add(permutation.dup.insert(idx, character))
      end
    end
    underlying = new_set
  end
  underlying.each
end
 
p permutations('abc').sort == ["abc", "acb", "bac", "bca", "cab", "cba"]