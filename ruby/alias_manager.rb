# write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# Swapping the first and last name.
first_name = "Felicia"
last_name = "Torres"
reverse_name = last_name.concat first_name
p reverse_name
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou',
reverse_name = str
def vowel_adv(str)
  vowels = ["a", "e", "i", "o", "u"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char
    end
  end
  str_new.join
end



 # and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

str = str_new.join

def consonant_adv(str)
consonants = [
  "b", "c", "d", "f", "g", "h", "j",
  "k", "l", "m", "n", "p", "q", "r",
  "s", "t", "v", "w", "x", "y", "z"
]
str = str.split('')
str_new = str.map do |char|
  if consonants.include?(char)
    consonants.rotate(1)[consonants.index(char)]
  else
    char
  end
end
str_new.join
end
p consonant_adv(str)
