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
