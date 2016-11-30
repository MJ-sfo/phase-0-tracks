# Release 1: Write a Simple Module
# module Shout
#   def initialize
#     @self = ""
#   end
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + " amen!!!" + " :)" 
#   end 
# end

# p Shout.yell_angrily "I like cheese"
# p Shout.yelling_happily "We won the House"

# Release 3: Convert a Standalone Module to a Mixin
# module - to be included in class(es)
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + " amen!!!" + " :)" 
  end 
end
# class - includes module
class Angry
  include Shout
end

class Gambler
  include Shout
end
# instance on class, input for module(s)
angry = Angry.new
puts angry.yell_angrily("Learn to drive")

house = Gambler.new
puts house.yelling_happily("Martha, we won the house")