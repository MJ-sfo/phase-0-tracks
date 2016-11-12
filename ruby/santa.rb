# Release 0: Bring Santa to Life
# print "Ho, ho, ho! Haaaappy holidays!" 
def speak
  p "Ho, ho, ho! Haaaappy holidays!" 
end

# prints "That was a good <type of cookie 
def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie} cookie!" 
end

# prints "Initializing Santa  
def print_santa
  puts "Initializing Santa instance ..."
end

# Release 1: Give Santa Attributes for Christmas
# Release 2: Change an Attribute with a Method
class Santa
  attr_accessor :age 
  def initialize
    @age = 0  
  end
  
  def flex_gender(gender)
    @gender = gender
  end
  
  def ethnicity(ethnct)
    @ethnct = ethnct
  end
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  
   def celebrate_birthday 
  @age = @age +1 
  end
end

add_year = Santa.new.celebrate_birthday
puts "Santa is now #{add_year}."
puts "------------"

#  initialization code 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  temp_santa = Santa.new
  puts "this Santa calls themself #{temp_santa.flex_gender(example_genders[i])} and #{temp_santa.ethnicity(example_ethnicities[i])}."
  santas << temp_santa
end
p santas


# Release 2: Change an Attribute with a Method
class Reindeer
  attr_accessor(:name)
  #first make   
  #then include Attribute in initialize
  def initialize(name)
    @name = name
  end
end

puts "-----------"
reindeer = Reindeer.new("Blitzen")
p reindeer.name
reindeer.name = "Tiny"
puts "our deer's name is now #{Reindeer.name}"
