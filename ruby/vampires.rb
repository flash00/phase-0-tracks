#Driver code

puts "How many employees will be processed?"
ee_num = gets.chomp.to_i

count = 0
while count < ee_num

# Program to ask new employee:
#Some known vampires are in the area, and we can check names against the Werewolf Intelligence Bureau database for their aliases.

puts "What is your name?"
name = gets.chomp.capitalize #entered info is capitalized as names usually are
puts "Welcome, " + name + "." #print to screen to confirm info entering program

# This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.

puts "How old are you?"
age = gets.chomp.to_i #enters as integer so can compare with year remainder
puts "Ok, " + age.to_s + " is a great age." #print to screen to confirm info entering program

puts "What year were you born?"
year = gets.chomp.to_i #change to integer to subtract from current year
puts "Well, " + year.to_s + " was a very good year." #print to screen to confirm info entering program

# subtract reported year from current year to compare to reported age
real_age = 2017 - year
  if age == real_age
    real_age = true
  else
    real_age = false
  end
puts real_age


#Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.

puts "Our company cafeteria serves delicious garlic bread. Should we order some for you (y/n)?"
g_bread = gets.chomp.to_s

if g_bread == "y"
  garlic = true
elsif g_bread == "n"
  garlic = false
else
  puts "Please mark y or n."
end
puts garlic


#Vampires are immortal, so they certainly don’t need health insurance.

puts "Would you like to enroll in the company's health insurance (y/n)?"
insurance = gets.chomp.to_s

if insurance == "y"
  e_insurance = true
elsif insurance == "n"
  e_insurance = false
else
  puts "Please mark y or n."
end
puts e_insurance


#Do the thing
if real_age != false && (garlic == true || e_insurance == true)
  puts "Probably not a vampire."
elsif real_age != true && (garlic == false || e_insurance ==false)
  puts "Probably a vampire."
elsif real_age != true && garlic == false && e_insurance == false
  puts "Almost certainly a vampire."
elsif
  name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end
count += 1
end

