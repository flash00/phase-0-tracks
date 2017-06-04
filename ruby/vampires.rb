#Driver code
# Program to ask new employee:
#Some known vampires are in the area, and we can check names against the Werewolf Intelligence Bureau database for their aliases.

puts "What is your name?"
name = gets.chomp.capitalize #entered info is capitalized as names usually are
puts "Welcome, " + name + "." #print to screen to confirm info entering program

# This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.

puts "How old are you?"
age = gets.chomp.to_i #enters as integer so can compare with year remainder
puts "Ok, " + age + " is a good age." #print to screen to confirm info entering program

puts "What year were you born?"
year = gets.chomp.to_i #change to integer to subtract from current year
puts "Well, " + year + " was a very good year." #print to screen to confirm info entering program

def check_age #this method will subtract reported year from current year to compare to reported age
real_age = 2017 - year
if age == real_age
  return true
else
  return false
end
p check_age

#Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.

puts "Our company cafeteria serves delicious garlic bread. Should we order some for you (y/n)?"
garlic_bread = gets.chomp.to_s

def garlic_bread
if garlic_bread == "y"
  return true
elsif garlic_bread == "n"
  return false
else
  puts "Please mark y or n."
end
p garlic_bread

#Vampires are immortal, so they certainly don’t need health insurance.

puts "Would you like to enroll in the company's health insurance (y/n)?"
insurance = gets.chomp.to_s

def wants_insurance
if insurance == "y"
  return true
elsif insurance == "n"
  return false
else
  puts "Please mark y or n."
end
p wants_insurance

#Do the thing
def condition_matching
if
  check_age != false && (garlic_bread == true || wants_insurance == true)
  puts "Probably not a vampire."
elsif
  check_age != true && (garlic_bread == false || wants_insurance == false)
  puts "Probably a vampire."
elsif
  check_age != true && garlic_bread == false && wants_insurance == false
  puts "Almost certainly a vampire."
elsif
  name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end
p condition_matching
end
