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
    @to_guess = ""
    @blank_spaces = ""
  end
  
  def clean_text(test_toclean)
    @test_toclean = test_toclean.gsub(/[^a-zA-Z]/, '').downcase
    if @test_toclean.empty? == true
      puts "Sorry, must include letters."
      @test_toclean = ""
    end
    @test_toclean
  end

  def set_hidden_word(word)
    @blank_spaces  = "-"*word.length
  end
  
  def receive_guess(test_toclean, list_guesses, blank_spaces, to_guess)
    @guess = clean_text(test_toclean)
    if @guess.length > 0 
      @guess = @guess[0]     # check for length, else 0 index is nil
    end
    @list_guesses = list_guesses
    prev_guess
    if @guess != ""
      @list_guesses << @guess
    end
    @blank_spaces = blank_spaces
    @to_guess = to_guess
    string_blanksandfound
    @guess
  end

  def prev_guess
    if  @list_guesses != ""
      if   @list_guesses.count(@guess) > 0
        puts "you already guessed '#{@guess}'."
        @guess = ""
      else
        puts "your guess is: '#{@guess}'"
      end
    end
  end       # end of prev_guess
    
    
  def string_blanksandfound
    if @guess != ""
       if @to_guess.count(@guess) > 0
         @to_guess.length.times do |x|
           if @to_guess[x] == @guess then @blank_spaces[x] = @guess end
          end
          puts "good guess!"
          p @blank_spaces
        else
          puts "can you even spell ?!?"
        end
    end
  end           # end of string_blanksandfound
  
end       # end of class


puts "what word do you want players to guess?"
to_guess = gets.chomp
testing = Mike_game.new  
to_guess = testing.clean_text(to_guess)
puts "the user must guess '#{to_guess}'."
blank_spaces = testing.set_hidden_word(to_guess)
list_guesses = ""
continue = true
index = 0 

while index <=  to_guess.length*2 
  p blank_spaces
  puts "Game player, what letter do you guess?"
  guess = gets.chomp
  testing.receive_guess(guess, list_guesses, blank_spaces, to_guess)

  if blank_spaces.count("-") == 0
    puts "congrats!  you found the word in #{index} guesses !!!"
    break
  end
  index +=1 
end
if blank_spaces.count("-") > 0
  puts "Sorry, you ran out of guesses"
end