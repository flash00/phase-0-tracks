# Virus Predictor

# I worked on this challenge with Hawken Ritter.
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# It requires an object, such as a hash, from a relative location like another file. It's like copy and pasting the information in the top of the file but cleaner.
#
require_relative 'state_data'

class VirusPredictor

 #Initializes an instance of the class VirusPredictor.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

 #The method virus_effects is responsible for showing the effects of a virus by combining the information from the methods predicted_deaths and speed_of_spread.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

 #The method predicted_deaths takes three arguments: population_density, population, and state. Using an if/elsif/else statement it predicts the number of deaths based on density and population from each state.
  def predicted_deaths
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

 #The method speed_of_spread takes two arguments: population_density and state. It is responsible for adjusting speed of the spread of the virus based on population density and then prints the result.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

   if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================
#Alaska will lose 36572 people in this outbreak and will spread across the state in 2.5 months.

# DRIVER CODE
 # initialize VirusPredictor for each state
# iterate through the states,

STATE_DATA.each do |state_origin, population_data|
  state_origin = VirusPredictor.new(state_origin, population_data[:population_density],population_data[:population])
  #p state_origin
  #p population_data
  state_origin.virus_effects
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects#

##jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
##jersey.virus_effects##

##california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
##california.virus_effects##

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
