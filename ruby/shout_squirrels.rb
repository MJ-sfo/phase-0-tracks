# Release 1: Write a Simple Module

# testing in command mode:
# irb return - get into irb
# require_relative 'shout_squirrels' - tell it what file to look at (dont need '.rb')
# Shout.yelling_happily       - Class dot method (cap class)
# exit  - to get out of irb

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily
#     puts "Thank you Lord!"
#   end
# end
# # Add driver code underneath your module declaration that calls both of your module methods.
# p Shout.yell_angrily("hiya")
# Shout.yelling_happily
# Shout.yell_angrily("once again")

# Release 3: Convert a Standalone Module to a Mixin
# Comment out the old code in shout.rb

module Shout
  def yell_angrily(words)        # notice - 'self.' is removed, since module is called by class outside of module
    puts "#{words} + !!! +  :("
  end

  def yelling_happily
    puts "Thank you Lord!"
  end
end

class Bird
  include Shout
end

class Plane
  include Shout
end

Plane.new.yell_angrily("hiya")
p "-"*10
Plane.new.yelling_happily
