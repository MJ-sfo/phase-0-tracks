# # Release 0: Bring Santa to Life
# defining a Santa class 
#   three instance methods: speak , eat_milk_and_cookies , initialize 

class Santa 
  def initialize
    puts  "Initializing Santa instance ...".
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!" 
    puts 'instance method'
  end

  def eat_milk_and_cookies(eat)
    puts  "That was a good #{eat}!" 
  end
end
