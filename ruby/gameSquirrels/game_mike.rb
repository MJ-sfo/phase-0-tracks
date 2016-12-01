# 6-6 Solo Challenge- A Game Class - Release 1-Design a Game
# pseudopod
# enter word
# strip, lowercase, remove any non-letters
# "    hello    ".strip   #=> "hello"
# if no letters, send error
# "".empty?        #=> true
# str.squeeze(" ")   - removes multi-space
# .gsub(/[^a-zA-Z]/, '')  - removes non-letters

# create text of dashes, equal to length of word
# set finish to false
# loop for guesses - # twice the length of word
# quit when want
# guess - strip, take first letter
# if new guess match previous, give message, restart loop  
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
# print end if did not finish guessing word.

testword = "  i lov(e   a 45 CAM. "
testword =testword.gsub(/[^a-zA-Z]/, '').downcase
p testword
finish = false
if testword.empty? == true
  puts"Sorry, must include letters."
  finish = true
end
hidden_word  = "-"*testword.length
puts hidden_word

class Guess-word
  attr_accessor :testword, :guess
  attr_reader :hidden_word
  
  def initialize
    @testword =""
    @guess = ""
    @list_guesses = ""
    @hidden_word = ""
    @finish = false
  end
  
  def clean_testword
    @testword =@testword.gsub(/[^a-zA-Z]/, '').downcase
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