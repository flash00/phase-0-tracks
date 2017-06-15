class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end

@age = 0

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaappy holidays"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} :)"
  end
end

# charles = Santa.new("unknown", "all")
# charles.speak
# charles.eat_milk_and_cookies("snickerdoodle")

santas = []

gender_ids = ["N/A", "transitional", "male-identifying-female", "female-identifying-male", "confused", "non-gendered", "male-identifying-male", "female-identifying-female"]

ethnicity_ids = ["N/A", "black", "latino", "white", "asian" "Legendary Forest Creature (Sasquatch)", "Legendary Ice Creature (Yeti)", "Star Wars Creature (Ewok)"]

gender_ids.length.times do |i|
  santas << Santa.new(gender_ids[i], ethnicity_ids[i])
end

print santas