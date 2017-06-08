# Release 1 parts 1 and 2

countries = [
"China",
"Denmark",
"Germany",
"Nigeria"
]

country_capitals = {
  'China' => 'Beijing',
  'Denmark' => 'Copenhagen',
  'Germany' => 'Berlin',
  'Nigeria' => 'Abuja'
}


puts "Countries: before .each call:"

#iterate throuch the array with .each
countries.each do |country|
  puts country
end

puts "Countries: after .each call:"
p countries

###############

numbers = [1, 2, 3, 4, 5]

puts "Numbers: before .map! call:"

numbers.map! do |number|
  puts number * 2
end

puts "Numbers: after .map! call:"
p numbers

##################
puts "Release 2 part 1 - array"

num_array = [1, 3, 5, 7]

num_array.select do |odd_num|
  if odd_num < 5
    puts odd_num
  end
end

puts "Release 2 part 1 - hash"

num_hash = {
  1 => 'happy',
  3 => 'sad',
  5 => 'sad',
  7 => 'happy'
}

num_hash.select do |number, status|
  if number < 5
    puts number
  end
end

puts "Release 2 part 2 - array"

num_array = [1, 3, 5, 7]

num_array.reject do |odd_num|
  if odd_num == 5
    puts odd_num
  end
end

puts "Release 2 part 2 - hash"

num_hash = {
  1 => 'happy',
  3 => 'sad',
  5 => 'sad',
  7 => 'happy'
}

num_hash.reject do |number, status|
  if number == 5
    puts number
  end
end

puts "Release 2 part 3 - array"

num_array = [1, 3, 5, 7]

num_array.keep_if do |odd_num|
  if odd_num == 3
    puts odd_num
  end
end

puts "Release 2 part 3 - hash"

num_hash = {
  1 => 'happy',
  3 => 'sad',
  5 => 'sad',
  7 => 'happy'
}

num_hash.keep_if do |number, status|
  if number == 3
    puts number
  end
end

puts "Release 2 part 4 - array"

num_array = [1, 3, 5, 7]

num_array.delete_if do |odd_num|
  if odd_num < 5
    puts odd_num
  end
end

puts "Release 2 part 4 - hash"

num_hash = {
  1 => 'happy',
  3 => 'sad',
  5 => 'sad',
  7 => 'happy'
}

num_hash.delete_if do |number, status|
  if number < 5
    puts number
  end
end