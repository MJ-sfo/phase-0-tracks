# # Release 0: Bring Santa to Life
# defining a Santa class 
#   three instance methods: speak , eat_milk_and_cookies , initialize 

# Release 1: Give Santa Attributes for Christmas
# declare at initialization: gender ethnicity reindeer_ranking age
# set default values for reindeer_ranking & age

# Release 2: Change an Attribute with a Method
# Add three attribute-changing methods 
# Add two "getter" methods

# class Santa 
#   def initialize(gend, ethn)
#     puts "Initializing Santa instance ..."
#     @gender, @ethnicity = gend, ethn
#     @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#     @age = 0 
#   end

#   def speak
#     puts "Ho, ho, ho! Haaaappy holidays!"
#   end

#   def eat_milk_and_cookies(eat)
#     # @eat = eat
#     puts  "That was a good #{eat} cookie !" 
#   end
  
#   def count_reindeer 
#     count = @reindeer_ranking.length
#   end
#   #  Release 2: Change an Attribute with a Method
#   def celebrate_birthday
#     @age = @age + 1        # +=1 
#   end
  
#   def get_mad_at(bad_reindeer)
#     @reindeer_ranking.delete(bad_reindeer) # not: @reindeer_ranking = @reindeer_ranking.delete(bad_reindeer)
#     @reindeer_ranking << bad_reindeer
#     # puts "new array is: #{@reindeer_ranking}"
#   end
  # a setter method --- but also need a getter method, to use outside of class Santa
#   def gender_makenew=(new_gender) 
#     @gender = new_gender
#   end
#   def gender
#     @gender
#   end
#   #  two "getter" methods
#   def age
#     @age
#   end
#   def ethnicity 
#     @ethnicity 
#   end
# end
# talking = Santa.new("male", "green")
# talking.speak
# talking.eat_milk_and_cookies("oats")
# puts talking.get_mad_at("Dancer")
# puts "new age of Santa is #{talking.celebrate_birthday}."
# talking.gender_makenew = "unknown gender"
# puts "Because of expensive operation, Santa is now #{talking.gender}."
# puts "Our Santa is #{talking.ethnicity} and #{talking.age} years old."

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas
# talking = Santa.new("non-gender","non-ethnic")
# puts "Santa has #{talking.count_reindeer} reindeer."

# Release 3: Refactor with attr_reader and attr_accessor
# add attr_reader and attr_accessor
# remove getter and setter methods 

# Release 4: Build Many, Many Santas
# build method to randomize gender, ethnicity with rand() method
# build .times loop to make a hundred Santas

class Santa 
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
  def initialize(gend, ethn)
    puts "Initializing Santa instance ..."
    @gender, @ethnicity = gend, ethn
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
    @possible_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    @possible_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
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
  #  Release 2: Change an Attribute with a Method
  def celebrate_birthday
    @age = @age + 1        # +=1 
  end
  
  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete(bad_reindeer) # not: @reindeer_ranking = @reindeer_ranking.delete(bad_reindeer)
    @reindeer_ranking << bad_reindeer
    # puts "new array is: #{@reindeer_ranking}"
  end

  # for creating random Santas
  def random_gender
    @gender = @possible_genders[rand(6)]
  end
  def random_ethnicity
    @ethnicity = @possible_ethnicities[rand(6)]
  end
end

talking = Santa.new("male", "green")
talking.speak
talking.eat_milk_and_cookies("oats")
puts talking.get_mad_at("Dancer")
puts "new age of Santa is #{talking.celebrate_birthday}."
talking.gender = "unknown gender"
puts "Because of expensive operation, Santa is now #{talking.gender}."
puts "Our Santa is #{talking.ethnicity} and #{talking.age} years old."

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas
talking = Santa.new("non-gender","non-ethnic")
puts "Santa has #{talking.count_reindeer} reindeer."

# random santas
100.times do
  puts "A random Santa is #{talking.random_gender} and ethnically #{talking.random_ethnicity}."
end


