# # Release 0: Bring Santa to Life
# defining a Santa class 
#   three instance methods: speak , eat_milk_and_cookies , initialize 

class Santa 
  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(eat)
    # @eat = eat
    puts  "That was a good #{eat} cookie !" 
  end
end
talking = Santa.new
talking.speak
Santa.new.eat_milk_and_cookies("oats")

