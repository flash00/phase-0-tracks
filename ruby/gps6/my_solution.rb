# Virus Predictor

# I worked on this challenge [with: Simon Brady].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require relative is subset of require which links to and loads information from file needed

require_relative 'state_data'

class VirusPredictor
# initializes a new instance of the class, sets up instance variables which whose values are passed in as parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# virus_effects returns information from two methods (predicted_deaths and speed_of_spread)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
# private makes following code inaccessible for objects outside of class
  private
# predicted_deaths intakes population_density, population, & state, determines appropriate calculation, and outputs state death totals
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
# speed_of_spread intakes population_density and state, determines appropriate calculation, and outputs speed of virus spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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

STATE_DATA.each do |state, population_hash|
 new_state = VirusPredictor.new(state, population_hash[:population_density], population_hash[:population])
 new_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file? In the first hash syntax the key is a string and the subhash uses a symbol for the key.
# What does require_relative do? How is it different from require?
#   require_relative loads a file by searching relative to the directory in which the file calling it resides. Require also loads a file but you have to add the current directory to the load path. require_relative is more convenient if you are working in a local directory.
# What are some ways to iterate through a hash? You can iterate through a hash using .each, .each_key, or .each_value.
# When refactoring virus_effects, what stood out to you about the variables, if anything? They are instance variables and it is not DRY to pass them as parameters because they are accessible to the methods without being passed.
# What concept did you most solidify in this challenge? Refactoring for DRY -that it can be smaller adjustments and does not need to be big changes.