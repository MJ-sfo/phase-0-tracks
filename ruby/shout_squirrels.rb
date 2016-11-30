# Release 1: Write a Simple Module

# testing in command mode:
# irb return - get into irb
# require_relative 'shout_squirrels' - tell it what file to look at (dont need '.rb')
# Shout.yelling_happily       - Class dot method (cap class)
# exit  - to get out of irb

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily
    puts "Thank you Lord!"
  end
end
# Add driver code underneath your module declaration that calls both of your module methods.
p Shout.yell_angrily("hiya")
Shout.yelling_happily
Shout.yell_angrily("once again")