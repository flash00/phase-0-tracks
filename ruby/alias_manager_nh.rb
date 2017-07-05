# write method alias_manager that accepts a string name and changes it to create a fake name by swapping first and last names and rotating all the vowels and consanants to the next vowel or consanant in the alphabet.

#Step 1: reverse the first and last names
#Step 2: loop through names to find vowels and consanants and rotate letters alphabetically
#Step 3: create data structure to store encoded names and input names (sounds like a hash because of the paired information).
#Step 4: create user interface requesting name input and providing encoded output

entered_names = []
spy_names = []

loop do
  puts "Type first and last name and hit enter to continue (type 'quit' to exit)."
  name_str = gets.chomp
    break if name_str == 'quit'
    entered_names << name_str

def reverse_names(name_str)
  name_str.split(" ").reverse.join(" ")
end

def rotate_letters(str)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = [
  "b", "c", "d", "f", "g", "h", "j",
  "k", "l", "m", "n", "p", "q", "r",
  "s", "t", "v", "w", "x", "y", "z"
  ]
  arr = str.downcase.split('')
  coded = []
  arr.map do |char|
    if vowels.include?(char)
      new_char = vowels.rotate[vowels.index(char)]
      coded << new_char
    elsif consonants.include?(char)
      new_char = consonants.rotate[consonants.index(char)]
      coded << new_char
    else
      coded << char
    end
  end
    coded = coded.join.split(" ")
    coded[0].capitalize + " " + coded[1].capitalize
end

spy_name = rotate_letters(reverse_names(name_str))
spy_names << spy_name

puts "Your spy name is #{spy_name}"
puts
end

all_names = Hash[entered_names.zip(spy_names)]

all_names.each {|input, encoded| puts "#{encoded} is actually #{input}."}




