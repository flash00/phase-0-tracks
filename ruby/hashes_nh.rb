# This is my hash for a rabbit client named Hopsy.
client_info = {
  name: "Hopsy Hopsalot",
  age: 2,
  children: 12,
  decor_theme: "meadow",
  color_preferences: "green",
  dislikes: "foxes",
  local: true,
  garage: false,
  pool: false
}

# Might be cleaner to initiate an empty hash instead of overwriting Hopsy's.
# client_info = Hash.new

# Prompt the designer for client information. A mixture of strings, integers and boolians
puts "Please enter client's name."
client_info[:name] = gets.chomp.to_s
puts "Please enter client's age."
client_info[:age] = gets.chomp.to_i
puts "Please enter the number of children client has."
client_info[:children] = gets.chomp.to_i
puts "Please enter client's decor theme."
client_info[:decor_theme] = gets.chomp.to_s
puts "Please enter client's color preferences."
client_info[:color_preferences] = gets.chomp.to_s
puts "Please enter client's strong dislikes."
client_info[:dislikes] = gets.chomp.to_s
puts "The client is local? (true/false)"
client_info[:onsite] = gets.chomp
puts "The client has garage? (true/false)"
client_info[:onsite] = gets.chomp
puts "The client has pool? (true/false)"
client_info[:onsite] = gets.chomp

# Print hash for the designer to review.
p client_info

# Designer has opportunity to update any key. Typing "none" will take designer out of review and print hash.

puts "Please review and enter a key if you would like to update it. If not, type 'none'."

key_update = gets.chomp
  if key_update == 'none'
    p client_info
  else
    puts "Enter value."
    value = gets.chomp
    case
      when "name", "decor_theme", "color_preferences", "dislikes"
        client_info[key_update.to_sym] = value.to_s
      when "age", "children"
        client_info[key_update.to_sym] = value.to_i
      else
        client_info[key_update.to_sym] = value
      end
  end

# Once designer has finished updating key and value information the revised hash prints.

p client_info


# The rubric criteris includes initialize and manipulate arrays and use variables to access arrays. Which I've done below.
# decor_styles = []
# decor_styles << "romantic_bohemian"
# decor_styles << "funky_fresh"
# decor_styles.unshift "plastic_fantastic"
# p decor_styles
# decor_styles.pop
# p decor_styles
# p decor_styles[0]