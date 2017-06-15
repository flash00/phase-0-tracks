class Santa
  def initialize
    puts "initializing a new Santa instance"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} :)"
  end
end

charles = Santa.new

charles.speak
charles.eat_milk_and_cookies("snickerdoodle")