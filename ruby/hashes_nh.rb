#Release 2 Use a Hash in a Program

# # create hash with client name, age, number of children, decor theme, color preferences, dislikes


client_info = {
  name: "Fluffy",
  age:"2",
  children: "12",
  decor_theme: "carrots",
  color_preferences: "green",
  dislikes: "foxes",
  onsite: true
}


# Prompt the designer/user for all of this information.
puts "Please enter client's name."
client_info[:name] = gets.chomp
puts "Please enter client's age."
client_info[:age] = gets.chomp
puts "Please enter how many children client has."
client_info[:children] = gets.chomp
puts "Please enter client's decor theme."
client_info[:decor_theme] = gets.chomp
puts "Please enter client's color preferences."
client_info[:color_preferences] = gets.chomp
puts "Please enter client's strong dislikes."
client_info[:dislikes] = gets.chomp
puts "The client is onsite? (true/false)"
client_info[:onsite] = gets.chomp

# # Convert any user input to the appropriate data type.
client_info.each do |key, value|
  puts value.to_s
end



# # Print the hash back out to the screen when the designer has answered all of the questions.
p client_info

# # Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

puts "Please review and enter key if you would like to update. If no updates please type 'none'."

key_update = gets.chomp

  if key_update == 'none'
    p client_info
  else
    puts "Please enter value."
    value = gets.chomp
    client_info[key_update.to_sym] = value.to_s
  end



# # Print the latest version of the hash, and exit the program.
p client_info

