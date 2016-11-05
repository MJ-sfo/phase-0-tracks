# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase 
"iNvEsTiGaTiOn".swapcase!
# "zom".<???>
# => “zoom”
"zom".replace "zoom"
"zom".gsub!("o", "oo")
"zom".gsub("o", "oo")
# "enhance".<???>
# => "    enhance    "
"   "<<"enhance"<<"   "
"enhance".insert(-1, '   ').insert(0, '   ')
# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase! 
"Stop! You’re under arrest!".upcase
# "the usual".<???>
#=> "the usual suspects"
"the usual"<<" suspects"
"the usual".insert(-1, " suspects")

# " suspects".<???>
# => "the usual suspects"
" suspects".insert(0, " the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".delete"r"
"The case of the disappearing last letter".delete!"r"
"The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".reverse.chop.reverse 
"The mystery of the missing first letter".slice!(1.."The mystery of the missing first letter".length)

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
"z".ord 

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
"How many times does the letter 'a' appear in this string?".downcase.count"a"
