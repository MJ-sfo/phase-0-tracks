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
  
  def count_reindeer 
    count = @reindeer_ranking.length
  end
end
talking = Santa.new("male", "green")
talking.speak
talking.eat_milk_and_cookies("oats")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas
talking = Santa.new("non-gender","non-ethnic")
puts "Santa has #{talking.count_reindeer} reindeer."

