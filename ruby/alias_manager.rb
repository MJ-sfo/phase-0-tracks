# pseudocode 
# input spy's name
# move vowels up one value
# move consonants up one value
# split name into  array
# reverse order of array
# contingate array into string, with spaces-- "foo" + "bar" + "foobar"
real_name=""
while real_name.downcase != "quit"
p "What name are we changing today? (if you are finished, please enter 'quit'."
real_name = gets.chomp
if real_name.downcase == "quit"
  break
end

stringarray = real_name.split("")
vowels_notcaps = ['a', 'e', 'i', 'o', 'u']
vowels_caps = ['A', 'E', 'I', 'O', 'U']
consonants_caps = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
consonants_notcaps = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z']

new_name = stringarray.each_with_index.map{|letter, index|
    if vowels_notcaps.include?(letter)
      new_index = vowels_notcaps.index(letter)
      if new_index == 4
        letter = vowels_notcaps[0]
      else
        letter = vowels_notcaps[new_index+1]
      end
    else
      letter
    end

    if vowels_caps.include?(letter)
      new_index = vowels_caps.index(letter)
      if new_index == 4
        letter = vowels_caps[0]
      else
        letter = vowels_caps[new_index+1]
      end
    else
      letter
    end

    if consonants_notcaps.include?(letter)
      new_index = consonants_notcaps.index(letter)
      if new_index == 20
        letter = consonants_notcaps[0]
      else
        letter = consonants_notcaps[new_index+1]
      end
    else
      letter
    end
    
    if consonants_caps.include?(letter)
      new_index = consonants_caps.index(letter)
      if new_index == 20
        letter = consonants_caps[0]
      else
        letter = consonants_caps[new_index+1]
      end
    else
      letter
    end
  }  

real_name = new_name.join("")
words = real_name.split(/\W+/)
words = words.reverse
real_name = words.join(" ")
p real_name
    
end