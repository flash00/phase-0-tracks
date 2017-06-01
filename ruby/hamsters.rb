puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level (from 1-10)?"
vol = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption (y/n)?"
adopt = gets.chomp
if adopt == "y"
  adopt = true
else
  adopt = false
end
puts "What is the hamster's estimated age in years?"
age = gets.chomp
if age.length < 1
  age = nil
else
  age = age.to_i
end

puts "#{name} the hamster with volume level " + vol.to_s + " has #{fur} fur. Recommended for adoption: #{adopt}."
if age.nil?
  puts "#{name}'s age is unknown."
else
  puts "#{name} is " + age.to_i + " years old."
end



