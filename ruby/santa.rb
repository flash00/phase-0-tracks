class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaappy holidays"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} :)"
  end
end

charles = Santa.new.age(0)

charles.speak
charles.eat_milk_and_cookies("snickerdoodle")