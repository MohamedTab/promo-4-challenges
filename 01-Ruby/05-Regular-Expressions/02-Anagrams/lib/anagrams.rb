def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
a_string = a_string.downcase.gsub(/\W/, "").split("").sort
another_string = another_string.downcase.gsub(/\W/, "").split("").sort
p a_string
p another_string
  if a_string == another_string
    return true
  else
    return false
  end
end


def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
a_string  = a_string.gsub(/\W/,"")
another_string = another_string.gsub(/\W/,"")
anagram = false
i = 0
w1 = Hash.new(0)
w2 = Hash.new(0)
if a_string.size == another_string.size
    while ((i+1) <= a_string.size)
      w1[a_string[i].downcase] = w1[a_string[i].downcase] + 1
      w2[another_string[i].downcase] = w2[another_string[i].downcase] + 1
      i = i+1
    end
    if w1.eql?(w2)
      anagram = true
    end
end
  return anagram
end

