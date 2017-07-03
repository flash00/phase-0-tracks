# # my methods that take a block

def first_block
  puts "Block hasn't run yet..."
  yield
  puts "Now it has."
end

first_block {puts "This is the block."}

def dessert_block
  puts "Dessert is the best!"
  yield("ice cream", "cake")
end

dessert_block {|dessert1, dessert2| puts "And the best desserts are #{dessert1} and #{dessert2}!"}

# Release 1 part 1

countries = [
'Laos',
'Denmark',
'New Zealand',
'Nigeria'
]

country_capitals = {
  'Laos' => 'Vientiane',
  'Denmark' => 'Copenhagen',
  'New Zealand' => 'Wellington',
  'Nigeria' => 'Abuja'
}

puts "Release 1 part 2"

puts "printing 'countries' array before .each call:"
puts countries

#iterate through the array with .each

countries.each do |country|
  p "calling .each on #{country}"
end

puts "printing 'countries' array after .each call:"
p countries
puts #blank line
puts #blank line

puts "printing 'countries' array before .map! call:"
puts countries

#iterate through the array with .map!

countries.map! do |country|
  country.reverse
end

puts "printing 'countries' array after .map! call:"
p countries

puts "printing the hash 'country_capitals' before .each call:"
puts country_capitals

#iterate through the hash with .each

country_capitals.each do |country, capital|
  puts "Calling .each on #{capital} the capital of #{country}."
end

puts "printing the hash 'country_capitals' after .each call:"
p country_capitals

puts "printing the hash 'country_capitals' before .map call:"
puts country_capitals

#iterate through the hash with .map

invert_capitals = country_capitals.map do |country, capital|
  country_capitals.invert
end
puts #blank line
puts "Here is the .map modified hash stored in a new variable."
p invert_capitals
puts #blank line

puts "printing the hash 'country_capitals' after .map call:"
p country_capitals

puts "Release 2: Array"

odd_nums = [1, 3, 5, 7, 9]

# p odd_nums.delete_if {|num| num % 3 == 0}
p odd_nums.keep_if {|num| num % 3 == 0}
p odd_nums.select {|num| num % 3 == 0}
p odd_nums.drop_while {|num| num < 7}

puts "Release 2: Hash"

hundreds = {
  a: 100,
  b: 200,
  c: 300,
  d: 400
}

# p hundreds.delete_if {|letter, number| number <= 200}
# p hundreds.keep_if {|letter, number| number <= 200}
# p hundreds.select {|letter, number| number <= 200}
p hundreds.reject {|letter, number| number <= 200}
