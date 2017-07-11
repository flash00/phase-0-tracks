class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender, :ethnicity
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @ethnicity = ethnicity
    @gender = gender
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
   puts "Santa is #{@age + 1}."
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    puts @reindeer_ranking.push(reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
    puts @gender
  end

end

kris_kringle = Santa.new("opt-out", "magical")
# kris_kringle.speak
# kris_kringle.eat_milk_and_cookies("snickerdoodle")

# santas = []
# genders = ["opt-out", "undeclared", "male", "female", "bigender", "n/a"]
# ethnicities = ["magical", "mystical", "non-magical", "non-mystical", "northpole-ish", "southpole-ish"]

# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end

# puts "Diverse Initializations:"
# print santas

kris_kringle.celebrate_birthday
kris_kringle.get_mad_at("Vixen")
kris_kringle.gender=("different")
p kris_kringle.age
p kris_kringle.ethnicity