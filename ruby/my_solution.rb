# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# Release 0: Run the Code  - Explain what the program is doing.
# driver code is using class VirusPredictor and hash dataset 'state_data' to predict speed of virus across certain states

# EXPLANATION OF require_relative
# Release 1: require_relative - "require_ ..." shows the data file that this file pulls info.  relative to location of THIS file
require_relative 'state_data'

# Release 2: Analyze state_data -  What is going on with this hash? What does it have in it?
# State hash uses states as keys.  the values are a second hash - two lines of data about the population

class VirusPredictor
# Release 3: Comment each method - initialize variables with value given at initialization,  with other modules able to use these variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
# calls two other methods - virus and speed
# Release 5: Refactor virus_effects - initial variables can be called everywhere inside class. don't have to call them again.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread  #(@population_density, @state)
  end

# Release 6: Private - methods below 'private' can't be called outside class. use to control what users can touch.
  private

# this method predicts how many people will die in a particular state
  def predicted_deaths  #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#  calculates the speed the virus will spread (in months)
  def speed_of_spread  #(population_density, state) #in months

    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  #  speed = 0.0

    # Release 7: Refactor - can simply set 'speed' to set values
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Release 4: Implement a new feature - could do inside class, but I like to show looped data from outside the class
STATE_DATA.each do |state, state_info| 
  state_prediction = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
state_prediction.virus_effects
end


#=======================================================================
# Reflection Section

# Release 8: Reflect
# What are the differences between the two different hash syntaxes shown in the state_data file?
# outer hash has text as key.  inner hash uses symbols as keys

# What does require_relative do? How is it different from require?
# require_relative gives the past (relative to this file) of connecting file that has data. 'require' best used when loading info from outside source

# What are some ways to iterate through a hash?
# I used a loop, line by line. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# using initiated variables - already availble everywhere within class

# What concept did you most solidify in this challenge?
# 'private' command, and the power of initiated variables