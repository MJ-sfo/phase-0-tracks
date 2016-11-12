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
# Release 3: Refactor with attr_reader and attr_accessor
class Santa
  attr_accessor :reindeer_ranking
  attr_reader :gender, :ethnct, :age
  def initialize
    @age = 0  
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  
  def flex_gender(gender)
    @gender = gender
  end
  
  def ethnicity(ethnct)
    @ethnct = ethnct
  end

  def celebrate_birthday 
  @age = @age +1 
  end
  
  def get_mad_at(bad_boy)
    # placer = @reindeer_ranking.index(bad_boy)
    @reindeer_ranking.delete(bad_boy)
    @reindeer_ranking << bad_boy
    p @reindeer_ranking
  end
  
  def new_age(random_age)
    @age = random_age
  end
end

#  initialization code 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  temp_santa = Santa.new
  puts "this Santa calls themself #{temp_santa.flex_gender(example_genders[i])} and #{temp_santa.ethnicity(example_ethnicities[i])}."
  santas << temp_santa
end


# Release 2: Change an Attribute with a Method
puts "------------"
add_year = Santa.new.celebrate_birthday
puts "Santa is now #{add_year}."
santa  = Santa.new
santa.flex_gender("MALE")
puts "Santa is now #{santa.gender}."
puts santa.reindeer_ranking
santa.get_mad_at("Dasher")

# Release 4: Build Many, Many Santas
# now needs a loop to do 100 times
65.times do |i|
  puts "Brand new Santa is #{santa.flex_gender(example_genders[rand(7)])}, #{santa.ethnicity(example_ethnicities[rand(7)])}, and #{santa.new_age(rand(141))} years old !"
end

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
