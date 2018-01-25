def first_anagram?(str1, str2)
  anagrams = []
  anagrams += str1.chars.permutation.to_a
  diff_ana = anagrams.map {|el| el.join}
  diff_ana.include?(str2)
end

def second_anagram?(str1, str2)
  pos = 0
  str1.each_char.with_index do |char,i|
    str2.slice!(str2.index(char)) unless str2.index(char).nil?
    pos = i
    break if str2.empty?
  end
  return true if pos == str1.length - 1 && str2.empty?
  false
end

def second_anagram(str1, str2)
  str1_copy = str1.dup
  str2_copy = str2.dup
  str1.chars.each do |chr|
    str2_copy.sub(chr,"")
  end
  str2.chars.each do |chr|
    str1_copy.sub(chr,"")
  end
  return true if str1_copy == "" && str2_copy == ""
  false
end
  
    
    


def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort 
end 

def four_anagram?(str1,str2)
  str1_hash = Hash.new(0)
  str1.chars.each do |char|
    str1_hash[char] += 1
  end
  str2.chars.each do |char|
    str1_hash[char] -= 1
  end

  str1_hash.all?{|k,v| v == 0}
  
end

