class Puppy
  def initialize
    puts "initializing a new Puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times{ puts "woof"
    }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    num * 7
  end

  def spin
    puts "**doggy spinning**"
  end
end


fido = Puppy.new
puts fido.fetch("ball")

fido.speak(3)
fido.roll_over
puts fido.dog_years(4)
fido.spin



class Automobiles

  def initialize
    puts "initializing new Automobile instance"
  end

  def back_to_the_future(year)
    puts "you drove so fast you're in #{year}"
  end

  def change_tire
    puts "congrats you changed the tire it only took #{rand(60)} minutes."
  end

end

# camero = Automobiles.new
# camero.back_to_the_future(1978)
# camero.change_tire

arr = []

50.times do
  arr << Automobiles.new
end

arr.each do |car|
  car.back_to_the_future((rand(100) + 1900))
  car.change_tire
end

