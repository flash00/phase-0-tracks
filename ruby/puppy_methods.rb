class Puppy

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