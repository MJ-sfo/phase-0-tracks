# 6-6 Solo Challenge- A Game Class - Release 1-Design a Game
# psudocode
# enter word
# strip, lowercase, remove any non-letters
# "    hello    ".strip   #=> "hello"
# if no letters, send error
# "".empty?        #=> true
# str.squeeze(" ")   - removes multi-space
# .gsub(/[^a-zA-Z]/, '')  - removes non-letters

# create text of dashes, equal to lenght of word
# set finish to false
# loop for guesses - # twice the length of word
# quit when want
# guess - strip, take first letter
# if new guess match previous, give message, restrat loop  
# 'hello'.match('xx')         #=> nil  --so if nil, not in 
# "hello".include? "lo"   #=> true
# "hello".index('e')             #=> 1 - finds index of FIRST letter,
# loop to find other letters

# add lowercase guess to array
# find index in word of guessed letter
# after, change dashes with guessed letter, print
# "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"

# if letter in word, congrats., else taunt
# if no more dashes, congrats, set finish to true
# add to counter
# end
# print end if did not finish guesssing word.
