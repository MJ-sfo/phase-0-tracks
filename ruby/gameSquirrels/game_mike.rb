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
  
 class Mike_game
  def initialize
    @test_toclean =""
    @guess = ""
    @list_guesses = ""
    @hidden_word = ""
    @finish = false
  end
  
  def clean_text(test_toclean)
    @test_toclean = test_toclean.gsub(/[^a-zA-Z]/, '').downcase
    if @test_toclean.empty? == true
      puts "Sorry, must include letters."
      @finish = true
    end
    @test_toclean
  end

  def set_hidden_word
    @hidden_word  = "-"*@testword.length
  end
  
  def receive_guess(test_toclean)
    @guess = clean_text(test_toclean)[0]
    puts "your guess is: '#{@guess}'"
    @list_guesses = @list_guesses + @guess
    @guess
  end
end

  # def clean_test
  #   @testword = @testword.gsub(/[^a-zA-Z]/, '').downcase
  #   if @testword.empty? == true
  #     puts "Sorry, must include letters."
  #     @finish = true
  #   end
  #   set_hidden_word
  #   puts "Guess the letters to '#{@hidden_word}'"
  # end
  
  
testing = Mike_game.new 
puts testing.clean_text("  i lov(e   a 45 CAM. ")