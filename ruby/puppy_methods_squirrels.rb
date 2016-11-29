# Release 0: Add Behavior to a Class

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

end
turn_on_class = Puppy.new
turn_on_class.fetch("ball")
puts "our dog's name is #{turn_on_class.give_name("Spot")}."
turn_on_class.speak(5)
turn_on_class.roll_over
puts "our dog is really #{turn_on_class.dog_years(2)}."
