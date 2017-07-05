# write method alias_manager that accepts a string real name and creates a fake name by swapping first and last names and changing all the vowels to the next one in the alphabet and does the same with consonants.

#Step 1: reverse the first and last names
#Step 2: loop through names to find vowels and consanants and rotate alphabetically


  entered_names = []
  spy_names = []
loop do
  puts "Type your first and last name. Then hit enter to continue. Or type 'quit' to exit."
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
  code = []
  arr.map do |char|
    if vowels.include?(char)
      new_char = vowels.rotate[vowels.index(char)]
      code << new_char
    elsif consonants.include?(char)
      new_char = consonants.rotate[consonants.index(char)]
      code << new_char
    else
      code << char
    end
  end
    code = code.join.split(" ")
    code[0].capitalize + " " + code[1].capitalize
end

spy_name = rotate_letters(reverse_names(name_str))
spy_names << spy_name

puts "Your spy name is #{spy_name}"
puts
end

all_names = Hash[entered_names.zip(spy_names)]

all_names.each {|input, encoded| puts "#{encoded} is actually #{input}."}




