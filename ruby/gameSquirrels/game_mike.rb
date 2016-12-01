# 6-6 Solo Challenge- A Game Class - Release 1-Design a Game
# pseudopod
# testword = "  i lov(e   a 45 CAM. "
# what done done in class, what in driver code?
# CLASS
# clean input
# check that actually has letters

# set length of dashes

# clean guess,
# check has letters
# receive array, check if already in array, add to array,

# if letter in original word,  change dashes, print dashes, congrats
# else, taunt

# DRIVER CODE?
# asks for word, send
# loop based on length
# ask for guesses
  
  def initialize
    @testword =""
    @guess = ""
    @list_guesses = ""
    @hidden_word = ""
    @finish = false
  end
  
  def clean_testword
    @testword = @testword.gsub(/[^a-zA-Z]/, '').downcase
    if @testword.empty? == true
      puts "Sorry, must include letters."
      @finish = true
    end
    set_hidden_word
    puts "Guess the letters to '#{@hidden_word}'"
  end

  def set_hidden_word
    @hidden_word  = "-"*@testword.length
  end
  
  def receive_guess
    @guess = @guess.gsub(/[^a-zA-Z]/, '').downcase[0]
    puts "your guess is: '#{@guess}'"
    @list_guesses = @list_guesses + @guess
  end
end