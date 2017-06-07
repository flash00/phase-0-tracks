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

puts "After .each call:"
p countries

###############

numbers = [1, 2, 3, 4, 5]

puts "Numbers: before .map! call:"

numbers.map! do |number|
  puts number * 2
end

puts "After .map! call:"
p numbers

##################

num_array = [1, 2, 5, 7]

num_array.select do |odd_num|
  if odd_num < 5
    puts odd_num
  end
end

num_array = [1, 2, 5, 7]

num_array.reject do |odd_num|
  if odd_num == 5
    puts odd_num
  end
end

num_array = [1, 2, 5, 7]

num_array.collect do |odd_num|
  if odd_num == 5
    puts odd_num
  end
end

num_array = [1, 2, 5, 7]

num_array.inject do |odd_num|
  if odd_num == 5
    puts odd_num
  end
end

num_array = [1, 2, 5, 7]

num_array.detect do |odd_num|
  if odd_num == 5
    puts odd_num
  end
end