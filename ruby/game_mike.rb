#  6.6 Solo Challenge: A Game Class
#1 What behaviors does the game have?
# starts by welcoming player, accent's player guess to coup, randomize cup, and then checks if matches with guess.

#2 What state does the game have?
# starts with zero guesses, but ball under first cup.

#3 Observe how the driver code acts as a bridge between the class 
#and the user. Are there times when user input cannot be passed 
#directly to the class, and instead must be adjusted from 
#"human logic" to "computer logic"?
# the driver code initiative's the class, then randomizes the cups.  The randomization is itself "computer logic"

#4 What would you have to change if you wanted to limit how many 
#guesses the user gets?
# The While loop changed from true/false dependent, to index that counted how many times went trough the loop - or break the loop when guesses hit a maximum.

# Release 1: Design a Game
# build a class
# initiate word as null, length as 0, guesses as empty array, word_array as empty array (will be filled with underscores)
# module - counts length of word, fills  word_array with underscores
# module response - taunt and congrats

# ask player for word
# loop  - ask second player for guess - word or letter
# give player underscores, one for each letter in word
# count number of guesses, max number loops based on length of word, keep track of guesses
# when get letter in word, replace underscores with letter
# compare guesses with previews guesses, 
# if 2nd player repeats the guess, tell them so, repeat without counting number or increasing loop index
#   increase index
#   if fill all letters or gives correct word, give congrats
#     if wrong guess, give taunt
#       repeat loop

