#Driver code
# Program to ask new employee:
#Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.

puts "What is your name?"
name = gets.chomp.capitalize
puts "Welcome, " + name + "."

# This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.

puts "How old are you?"
age = gets.chomp.to_s
puts "Ok, " + age + " is a good age."

puts "What year were you born?"
year = gets.chomp.to_i
puts "Well, " + year + " was a very good year."

def check_age(#{year})
  check = (2017 - #{year})
  if #{age} == check
    age == true
  else
    age == false
end
puts check_age

#Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.

puts "Our company cafeteria serves delicious garlic bread. Should we order some for you (y/n)?"
garlic_bread = gets.chomp.to_s

if garlic_bread == "y"
  true
elsif garlic_bread == "n"
  false
else
  puts "Please mark y or n."
end

#Vampires are immortal, so they certainly don’t need health insurance.

puts "Would you like to enroll in the company's health insurance (y/n)?"
insurance = gets.chomp.to_s

if insurance == "y"
  true
elsif insurance == "n"
  false
else
  puts "Please mark y or n."
end

#Do the thing

if
  check_age != false && (garlic_bread == true || insurance == true)
  puts "Probably not a vampire."
elsif
  check_age == false && (garlic_bread == false || insurance == false)
  puts "Probably a vampire."
elsif
  check_age == false && garlic_bread == false && insurance == false
  puts "Almost certainly a vampire."
elsif
  name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end
end
