class Santa

def initialize(gender, ethnicity)
  puts "Initializing Santa instance..."
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0
  @gender = gender
  @ethnicity = ethnicity

end

def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}!"
end

end

# kris_kringle = Santa.new("opt-out", "magical")
# kris_kringle.speak
# kris_kringle.eat_milk_and_cookies("snickerdoodle")

santas = []
genders = ["opt-out", "undeclared", "male", "female", "bigender", "n/a"]
ethnicities = ["magical", "mystical", "non-magical", "non-mystical", "northpole-ish", "southpole-ish"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

puts "Diverse Initializations:"
print santas
