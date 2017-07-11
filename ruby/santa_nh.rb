class Santa

def initialize
  puts "Initializing Santa instance..."
end

def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}!"
end

end

kris_kringle = Santa.new
kris_kringle.speak
kris_kringle.eat_milk_and_cookies("snickerdoodle")
