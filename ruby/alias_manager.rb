

reverse_name = ""

# #User Interface
loop do
  puts "Enter a first name to encrypt (or type 'q' for quit):"
  first_name = gets.chomp
  break if first_name == "q"
  puts "Enter a last name to encrypt (or type 'q' for quit):"
  last_name = gets.chomp
  break if last_name == "q"

puts "You entered: #{first_name} #{last_name}"

# Swapping the first and last name.
reverse_name << last_name + first_name
puts "This is your name reversed:"
p reverse_name

str = reverse_name.downcase

# write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

def letter_adv(str)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = [
  "b", "c", "d", "f", "g", "h", "j",
  "k", "l", "m", "n", "p", "q", "r",
  "s", "t", "v", "w", "x", "y", "z"
  ]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    elsif consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  str_new.join
end
puts "Here is your encrypted name:"
p letter_adv(str)
end


# str_new.join = code_name
# data = {
#   "entry1": first_name,
#   "entry2": last_name,
#   "entry3": code_name
# }
# p data["entry3"]
#
