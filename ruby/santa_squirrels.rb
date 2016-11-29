# # Release 0: Bring Santa to Life
# defining a Santa class 
#   three instance methods: speak , eat_milk_and_cookies , initialize 

# Release 1: Give Santa Attributes for Christmas
# declare at initialization: gender ethnicity reindeer_ranking age
# set default values for reindeer_ranking & age

class Santa 
  def initialize(gend, ethn)
    puts "Initializing Santa instance ..."
    @gender, @ethnicity = gend, ethn
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(eat)
    # @eat = eat
    puts  "That was a good #{eat} cookie !" 
  end
end
talking = Santa.new("male", "green")
talking.speak
talking.eat_milk_and_cookies("oats")

