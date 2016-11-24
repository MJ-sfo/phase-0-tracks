# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase  
"iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

"zom".insert(2, "o")
"zom".gsub("o", "oo")
# => “zoom”

"enhance".ljust(11).rjust(15)   
"enhance".ljust("enhance".length + 4).rjust("enhance".length + 8)
"enhance".insert(-1, '   ').insert(0, '   ')
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
"the usual"<< " suspects"
"the usual".concat(" suspects")
# "the usual".<???>
#=> "the usual suspects"

" suspects".insert(0,"the usual") 
" suspects".replace"the usual suspects"
" suspects".gsub(/[' ']/, 'the usual ')  
" suspects".gsub!(/[' ']/, 'the usual ')  
"the usual".insert(-1, " suspects")
# " suspects".<???>
# => "the usual suspects"

"The case of the disappearing last letter"[0...39]
"The case of the disappearing last letter".chop
# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"[1...39]
"The mystery of the missing first letter".slice!(1.."The mystery of the missing first letter".length)
# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")  
"Elementary,    my   dear        Watson!".squeeze  
"Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')
# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"z".unpack("U*")[0]
"z".ord 
# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4