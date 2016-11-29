class Puppy
 def instance
   @dogs_name = name
 end
 
 def give_name(name)  # we created this method
   @dogs_name = name
 end
 
 def speak(barking)
   barking.times do  
     puts "Woof!"
   end
 end
 
 def dog_years(human_years)
   dog_years = human_years * 7
 end  
 def roll_over
   puts "*rolls over*"
 end  
 def fetch(toy)
   puts "I brought back the #{toy}!"
   # toy
 end
 def initialize #if mispelled will create completely separate method
  puts "Initializing new puppy instance..."
 end
end
turn_on_class = Puppy.new
turn_on_class.fetch("ball")
puts "our dog's name is #{turn_on_class.give_name("Spot")}."
turn_on_class.speak(5)
turn_on_class.roll_over
puts "our dog is really #{turn_on_class.dog_years(2)}."

# Release 2: Write Your Own Class, and Experiment!
array_of_cats = []
class Cat
    
    def initialize
        puts "I'm a new cat!"
    end
    
    def cat_nap(hours)
        puts "I napped for #{hours} hours."
    end
    
    def stalk_bird(amount)
        puts "I stalked #{amount} birds today."
    end
end
50.times {array_of_cats<<Cat.new} #create 50 identical cats
# puts array_of_cats <- outputs unique identifiers
array_of_cats.each do |cat|
    cat.cat_nap(2)
    cat.stalk_bird(3)
end
# returns value of array - 50 hexadecimal numbers , the name of each instance