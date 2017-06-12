# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

puts "Array Drills 1"

zombie_apocalypse_supplies.each {|x| print x, " * "}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
puts
puts "Array Drills 2"

alphabet = "abcdefghijklmnopqrstuvwxyz"
items = zombie_apocalypse_supplies
items.each_index do |first|
  items.each_index do |second|
    if items[first] < items[second]
      items[first], items[second] = items[second], items[first]
    end
  end
end
puts items.join(', ')


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

puts "Array Drills 3"

puts "Please enter item:"
item = gets.chomp.to_s
zombie_apocalypse_supplies.each do|supply|
  if zombie_apocalypse_supplies.include? item
    puts "Thanks, but we have #{item}."
    break
  else
    puts "Thank you!"
    break
  end
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

puts "Array Drills 4"

new_supplies = []
counter = 0
while counter < 5
    new_supplies<<zombie_apocalypse_supplies[counter]
    counter += 1
end
puts new_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

puts "Array Drills 5"

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

unique_supplies = zombie_apocalypse_supplies | other_survivor_supplies
puts unique_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

puts "Hash Drills 1"

extinct_animals.each do|animal, year| print "#{animal}-#{year}*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
puts
puts "Hash Drills 2"

extinct_animals.each do|animal, year| print "#{animal}-#{year}*" if year < 2000
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
puts
puts "Hash Drills 3"

extinct_animals.each do|animal, year|
  year = year - 3
  print "#{animal}-#{year}*"
end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
puts
puts "Hash Drills 4"

extinct_animals.each do|animal, year|
  case
  when animal == "Andean Cat"
    puts "Andean Cat is extinct."
  when animal == "Dodo"
    puts "Dodo is extinct."
  when animal == "Saiga Antelope"
    puts "Saiga Antleope is extinct."
  else
    puts "Animal is not extinct."
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

puts "Hash Drills 5"

p extinct_animals.assoc("Passenger Pigeon")
