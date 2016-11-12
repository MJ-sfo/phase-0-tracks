module Shout
  def initialize
    @self = ""
  end
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "   amen!!!" + " :)" 
  end 
end

p Shout.yell_angrily "I like cheese"
p Shout.yelling_happily "We won the House"