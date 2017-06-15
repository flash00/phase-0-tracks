class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def initialize(gender, ethnicity)
    puts "initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_birthday
    print "Santa is "
    @age + 1
  end

  def get_mad_at(name_str)
    @reindeer_ranking.each do |name|
      if name_str == name
        @reindeer_ranking.delete(name)
        puts @reindeer_ranking.push(name_str)
      end
    end
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} :)"
  end
end

santa1 = Santa.new("unknown", "all")
santa1.speak
santa1.eat_milk_and_cookies("snickerdoodle")
puts santa1.celebrate_birthday
puts "When Santa gets mad - to back of the pack Vixen."
santa1.get_mad_at("Vixen")
puts "Santa's new gender:"
puts santa1.gender=("transitional")
puts "Santa's age:"
puts santa1.age
puts "Santa's ethnicity:"
puts santa1.ethnicity



santas = []

gender_ids = ["N/A", "transitional", "male-identifying-female", "female-identifying-male", "confused", "non-gendered", "male-identifying-male", "female-identifying-female", "various", "agender", "bigender", "male", "female", "gender fluid"]

ethnicity_ids = ["N/A", "black", "latino", "white", "asian", "Japanese", "Japanese-African", "Legendary Forest Creature (Sasquatch)", "Legendary Ice Creature (Yeti)", "Star Wars Creature (Ewok)", "Sea Creature", "Mermaid", "Selkie", "Unicorn", "Griffin", "Phoenix", "Sphinx", "Magician", "Wizard", "Mage"]

# gender_ids.length.times do |i|
#   santas << Santa.new(gender_ids[i], ethnicity_ids[i])
# end

# puts "Diverse Initializations:"
# print santas

#Many many santas
def many_santas
  counter = 0
  while counter < 1000
    puts Santa.new(gender_ids[i].sample, ethnicity_ids[i].sample, @age.rand(140)

      counter += 1
end
end
