# my methods that take a block

# def first_block
#   puts "Block hasn't run yet..."
#   yield
#   puts "Now it has."
# end

# first_block {puts "This is the block."}

# def dessert_block
#   puts "Dessert is the best!"
#   yield("ice cream", "cake")
# end

# dessert_block {|dessert1, dessert2| puts "And the best desserts are #{dessert1} and #{dessert2}!"}

# # Release 1 part 1

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

# puts "Release 1 part 2"

# puts "printing 'countries' array before .each call:"
# puts countries


# #iterate through the array with .each
# countries.each do |country|
#   p "calling .each on #{country}"
# end

# puts "printing 'countries' array after .each call:"
# p countries
# puts #blank line
# puts #blank line

# puts "printing 'countries' array before .map! call:"
# puts countries
# #iterate through the array with .map!
# countries.map! do |country|
#   country.reverse
# end

# puts "printing 'countries' array after .map! call:"
# p countries

# puts "printing the hash 'country_capitals' before .each call:"
# puts country_capitals
# #iterate through the hash with .each
# country_capitals.each do |country, capital|
#   puts "Calling .each on #{capital} the capital of #{country}."
# end

# puts "printing the hash 'country_capitals' after .each call:"
# p country_capitals

# ##################
# puts "Release 2 part 1 - array"

# num_array = [1, 3, 5, 7]

# num_array.select do |odd_num|
#   if odd_num < 5
#     puts odd_num
#   end
# end

# puts "Release 2 part 1 - hash"

# num_hash = {
#   1 => 'happy',
#   3 => 'sad',
#   5 => 'sad',
#   7 => 'happy'
# }

# num_hash.select do |number, status|
#   if number < 5
#     puts number
#   end
# end

# puts "Release 2 part 2 - array"

# num_array = [1, 3, 5, 7]

# num_array.reject do |odd_num|
#   if odd_num == 5
#     puts odd_num
#   end
# end

# puts "Release 2 part 2 - hash"

# num_hash = {
#   1 => 'happy',
#   3 => 'sad',
#   5 => 'sad',
#   7 => 'happy'
# }

# num_hash.reject do |number, status|
#   if number == 5
#     puts number
#   end
# end

# puts "Release 2 part 3 - array"

# num_array = [1, 3, 5, 7]

# num_array.keep_if do |odd_num|
#   if odd_num == 3
#     puts odd_num
#   end
# end

# puts "Release 2 part 3 - hash"

# num_hash = {
#   1 => 'happy',
#   3 => 'sad',
#   5 => 'sad',
#   7 => 'happy'
# }

# num_hash.keep_if do |number, status|
#   if number == 3
#     puts number
#   end
# end

# puts "Release 2 part 4 - array"

# num_array = [1, 3, 5, 7]

# num_array.delete_if do |odd_num|
#   if odd_num < 5
#     puts odd_num
#   end
# end

# puts "Release 2 part 4 - hash"

# num_hash = {
#   1 => 'happy',
#   3 => 'sad',
#   5 => 'sad',
#   7 => 'happy'
# }

# num_hash.delete_if do |number, status|
#   if number < 5
#     puts number
#   end
# end