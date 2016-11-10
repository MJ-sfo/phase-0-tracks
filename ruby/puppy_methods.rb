#  1 - Add driver -instance of Puppy obeying commands
class Puppy
   attr_accessor :fetch
  def ball
      puts "Puppy fetch ball !"
  end
  def speak(times_talk)
    times_talk.times  do 
      puts "Woof!"
    end
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(human_years)
    years_old = human_years * 7
    return years_old
  end
  def sit
    puts "good dog - you are sitting still!  here is a doggy treat"
  end
end
try_it = Puppy.new 
 
try_it.speak(5)
try_it.ball
try_it.roll_over
puts "our puppy is really #{try_it.dog_years(2)} years old"
try_it.sit