# Initial pseudocode: Create empty string to add swapped first and last name to. Create is_vowel method and test. Create is_consanant method (based on is_vowel) and test. Combine as letter_adv(str) method which converts the characters to create aliases. Next prepare User Interface which will provide name data. Create empty data objects, two arrays, to store the names and aliases in.

def letter_adv(str)#defined method for converting names to aliases
  vowels = ["a", "e", "i", "o", "u"] #array variables to use to convert vowels and consonants - rotate one index in array
  consonants = [
  "b", "c", "d", "f", "g", "h", "j",
  "k", "l", "m", "n", "p", "q", "r",
  "s", "t", "v", "w", "x", "y", "z"
  ]
  str = str.split('') #separate name string to compare each individual character
  str_new = str.map do |char|#loop through string
    if vowels.include?(char)#if statement if character is a vowel
      vowels.rotate(1)[vowels.index(char)]#if so, rotate one character index
    elsif consonants.include?(char) #is character a consonant then rotate one character
      consonants.rotate(1)[consonants.index(char)]
    else #else closes the ifelsifelse statement and allows for non consonant and non vowel characters
      char
    end #close ifelsifelse statement
  end #close block iteration
  str_new.join.capitalize #join characters for alias
end

names_array = [] #initiate empty data object to store names input
aliases_array = [] #initiate empty data object to store aliases

def names_store(array, array2) #method to loop through data objects
  index = 0
  while index < array.length #while loop to iterate through first data array
    puts  array2[index].capitalize + " is actually " +  array[index].capitalize
    index += 1
  end
  index = 0
  while index < array2.length #while loop to iterate through second data array
    array2[index]
    index += 1
  end
end

#User Interface
loop do #infinite loop so user can keep entering names
  puts "Enter a first name to encrypt (or type 'q' for quit):" #q is only way to exit loop
  first_name = gets.chomp #get user input
  break if first_name == "q" #exit loop on "q"
  puts "Enter a last name to encrypt:" #get more user input
  last_name = gets.chomp

puts "You entered: #{first_name} #{last_name}." #print users entries to console

reverse_name = "" #initiate empty string to store reverse name

reverse_name << last_name + " " + first_name #swap first and last name
puts "This is your first and last name swapped:"
p reverse_name

str = reverse_name.downcase #change name to downcase string for letter_adv method

print "This is your name encoded: " #prints alias
puts letter_adv(str)

#shovel operator adds data to data object arrays
names_array << first_name + " " + last_name
aliases_array << letter_adv(str)

end #end user input loop


names_store(names_array, aliases_array) #call method for printing data object arrays to console
