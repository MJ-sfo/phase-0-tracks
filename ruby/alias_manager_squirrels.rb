# Release 0: Attempt a Tricky Algorithm
# pseudocode
# create variable with spy name
# split name into array of words, reverse array, join back into one name
# reverse name, break into array
# lowercase letters
# do each loop
# if statement - letter match a vowel, if edge letter change to a, else move up one letter in vowel
# else - if edge letter change to b, else move up one letter in consonant
# finally - join array into one words

# Release 1: Provide a User Interface
# set var as false, start loop as long as false
# ask for name, set to var name
# if name is 'quit', set var as true
#   esle - change name
# end loop

loop = false
while loop == false
  puts "What name do you want changed? (type 'quit' if done)"
  name = gets.chomp.strip 
  if name.downcase == 'quit'
    loop = true
  else
    name_array = name.split('')
    name_array = name_array.reverse
    name_backwords = name_array.join('')
    puts "The name revsed is: #{name_backwords}."
    
    name_backwords = name_backwords.gsub(/[aeiou]/, 'a'=>'e', 'e'=>'i', 'i'=>'o', 'o'=>'u', 'u'=>'a')
    name_backwords = name_backwords.gsub(/[AEIOU]/, 'A'=>'E', 'E'=>'I', 'I'=>'O', 'O'=>'U','U'=>'A')
    name_backwords = name_backwords.gsub(/[bcdfghjklmnpqrstvwxyz]/, 'b'=>'c', 'c'=>'d', 'd'=>'f', 'f'=>'g', 'g'=>'h', 'h'=>'j', 'j'=>'k', 'k'=>'l', 'l'=>'m', 'm'=>'n', 'n'=>'p', 'p'=>'q', 'q'=>'r', 'r'=>'s', 's'=>'t', 't'=>'v', 'v'=>'w', 'w'=>'x', 'x'=>'y', 'y'=>'z', 'z'=>'b' )
    name_backwords = name_backwords.gsub(/[BCFGHJKLMNPQRSTVWXYZ]/,'B'=>'C','C'=>'D','D'=>'F','F'=>'G','G'=>'H','H'=>'J','J'=>'K','K'=>'L','L'=>'M','M'=>'N','N'=>'P','P'=>'Q','Q'=>'R','R'=>'S','S'=>'T','T'=>'V','V'=>'W','W'=>'X','X'=>'Y','Y'=>'Z','Z'=>'B' )
    
    puts "The name with letters reversed is: #{name_backwords}."
  end
end