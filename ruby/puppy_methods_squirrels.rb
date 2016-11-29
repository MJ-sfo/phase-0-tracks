# Release 0: Add Behavior to a Class

class Puppy
  def instance
    @dogs_name = name
  end
  
  def give_name(name)
    @dogs_name = name
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    # toy
  end

end
turn_on_class = Puppy.new
turn_on_class.fetch("ball")
puts "our dog's name is #{turn_on_class.give_name("Spot")}."