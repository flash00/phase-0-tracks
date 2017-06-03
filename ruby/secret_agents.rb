# Create method Encrypt which advances each letter of string one letter forward.
# contstruct a loop iterating through each letter and encrypt it. Return encrypted string.

# define the method
def encrypt(string)
  # set the counter
  index = 0
  # declare empty string
  estring = ""
  # initiate a while loop
  while index < string.length
    estring += string[index].next
    index += 1
  end
  # keep space character
  estring.gsub("!"," ")
end

encrypt("abc d")


# create decrypt method for reversing encrypt method above



def decrypt(estring)
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  dstring = ""
  while index < estring.length
  estring[index] += dstring[index]
  index += 1
  end
  dstring
end
decrypt("bcd")

# Our driver code

# ask the user if they would like to encrypt or decrypt their code
puts "Hi, would you like to encrypt or decrypt a password?"
type = gets.chomp

# ask user for password
puts "Please enter your password."
password = gets.chomp

# conducts requested operation

if #{type} = "encrypt"
  encrypt(#{password})
elsif #{type} = "decrypt"
  decrypt(#{password})
else
  puts "Sorry, I didn't understand that."
end
# say bye
puts "Okay, bye."



