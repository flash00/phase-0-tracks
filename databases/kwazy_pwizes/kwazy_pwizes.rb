require 'sqlite3'

db = SQLite3::Database.new("kwazy_pwizes.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kwazy_pwizes(
    id INTEGER PRIMARY KEY,
    noun VARCHAR(255),
    location VARCHAR(255),
    celebrity VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

# *********DATA POPULATING kwazy_pwizes database************
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('super power of your choice - try them all', 'Paris the City of Lights', 'George Clooney')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('key to Santa sleigh to cruise with the reindeer gang', 'Machu Picchu the Incan citadel high in the Andes Mountains', 'Anthony Bourdain')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('zoo with all of the world’s coolest animals-and they can talk!', 'Bora Bora the French Polynesian wonderland', 'Barack Obama')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('golden scaled dragon', 'Rome the Eternal City', 'Oprah Winfrey')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('gold-plated yacht', 'Barcelona the City of Chocolate', 'Beyonce')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('1000 room Manhattan mansion', 'Rio the city of Carnival', 'Steph Curry')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('red Maserati GranTurismo', 'Kauai on the Napali Coast', 'Jerry Seinfeld')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('private tropical island', 'and exhilirating Tokyo Japan', 'Ellen DeGeneres')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('dream vacation on Mars', 'Kathmandu Nepal the Himalayan jewel', 'Jimmy Fallon')")
# db.execute("INSERT INTO kwazy_pwizes (noun, location, celebrity) VALUES ('billion dollars', 'Serengeti National Park in Tanzania', 'Elon Musk')")


nouns = db.execute("SELECT noun FROM kwazy_pwizes")
prize = nouns.sample
locations = db.execute("SELECT location FROM kwazy_pwizes")
dream_local = locations.sample
celebrities = db.execute("SELECT celebrity FROM kwazy_pwizes")
star_power = celebrities.sample

# USER INTERFACE

puts "Welcome to KWAZY PWIZES!"
puts "Enter '$1' to play. Or type 'done' to exit."
payment = gets.chomp
# break if payment == 'done'
if payment == '$1'
"\n"
  puts "CONGRATULATIONS!!!****"
  puts "You won a #{prize}!" "\n" "You will fly to fabulous #{dream_local}." "\n" "And receive your prize from star celebrity #{star_power}!!" "\n" "Hooray!"
end