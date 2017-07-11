class Santa
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
    puts "#{reindeer}'s in trouble: "
    p @reindeer_ranking.push(reindeer)
  end

  def gender=(new_gender)
    @gender = new_gender
    puts @gender
  end

end

kris_kringle = Santa.new("opt-out", "magical")
kris_kringle.speak
kris_kringle.eat_milk_and_cookies("snickerdoodle")

santas = []
genders = ["opt-out", "undeclared", "male", "female", "bigender", "n/a"]
ethnicities = ["magical", "mystical", "non-magical", "non-mystical", "northpole-ish", "southpole-ish"]
puts "Diverse Initializations:"
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end
p santas
puts #blank space

puts "Calling celebrate_birthday:"
kris_kringle.celebrate_birthday
puts #blank space
puts "Calling get_mad_at:"
kris_kringle.get_mad_at("Vixen")
puts #blank space
puts "Calling gender:"
kris_kringle.gender=("different")
puts #blank space
puts "Calling age:"
p kris_kringle.age
puts #blank space
puts "Calling ethnicity:"
p kris_kringle.ethnicity
puts #blank space

puts "Build many many santas:"
1000.times do |santa|
    Santa.new(genders.sample, ethnicities.sample)
    p "Santa's gender: #{genders.sample} / ethnicity: #{ethnicities.sample}"
    print "Santa's age is "
    p @age = rand(141)
  end