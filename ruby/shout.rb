module Shout
  def initialize
    @self = ""
  end
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
#  def self.yelling_happily(words)
 #   words + "amen!!!" + " :)" 
  #end 
end

Self.yell_angrily "I like cheese"
