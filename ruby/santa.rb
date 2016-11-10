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
class Santa
  def example_genders(gender)
    @gender = gender
  end
  def example_ethnicities(ethnct)
    @ethnct = ethnct
  end
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  age = 0 
end

#  initialization code 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
  temp_santa = Santa.new
  temp_santa.example_genders(example_genders[i])
  temp_santa.example_ethnicities(example_ethnicities[i])
  santas << temp_santa
end
p santas