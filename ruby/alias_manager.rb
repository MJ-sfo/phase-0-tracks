# pseudocode 
# input spy's name
# move values up one value
# move consonants up one value
# split name into  array
# reverse order of array
# contingate array into string, with spaces-- "foo" + "bar" + "foobar"
p "What name are we changing today?"
real_name = gets.chomp

stringarray = real_name.split("")
vowels_notcaps = ['a', 'e', 'i', 'o', 'u']

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
  }


real_name = new_name.join("")
p real_name