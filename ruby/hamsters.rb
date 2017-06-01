puts "What is the hamster's name?"
input = gets.chomp
puts "What is the hamster's volume level (from 1-10)?"
vol = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption (y/n)?"
adopt = gets.chomp
if adopt == "y"
  adopt = true
else
  adopt = false
end
puts "What is the hamster's estimated age?"
age = gets.chomp
if age.length < 1
  age = nil
else
  age = age.to_i
end
#   on_a_budget = true
# else
#   on_a_budget = false
# end

# puts "Do you like animals? (y/n)"
# input = gets.chomp

# if input == "y"
#   likes_animals = true
# else
#   likes_animals = false
# end