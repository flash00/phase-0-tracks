puts "What is the hamster's name?"
input = gets.chomp
puts "What is the hamster's volume level (from 1-10)?"
vol = gets.chomp
puts "What is the hamster's fur color?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption?"
adopt = gets.chomp
puts "What is the hamster's estimated age?"
age = gets.chomp
if age.length < 1
  age = nil
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