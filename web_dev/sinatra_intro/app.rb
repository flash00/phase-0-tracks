# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

#write GET route /contact
#display address
get '/contact' do
  "<h1><a href='https://www.google.com/maps/place/La+Taqueria/@37.7508961,-122.4202807,17z/data=!3m1!4b1!4m5!3m4!1s0x808f7e46d50136ad:0x21fce96ce541e475!8m2!3d37.7508961!4d-122.4180867?hl=en'>Here is the address for La Taqueria.</h1>"
end

#write GET route /great_job
#add query parameter
#add IF statement with ELSE display
#how to call - localhost:9393/great_job?name=Frank
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

#write GET route /add
#add route parameters
get '/add/:num1/:num2' do
  num1 = params[:num1][0].to_i
  num2 = params[:num2][0].to_i
  (num1 + num2).to_s
end

#write GET route /students/age
#user searches student information to display by age
get '/students/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])[0]
  student.to_s
end

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# RESEARCH
Is Sinatra the only web app library in Ruby? NO. What are some others? Ruby on Rails, Rack, Padrino, Cramp, Cuba, Merb, Camping, Hobo, Ramaze, Espresso, and more.
Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? NO. What are some others? ActiveRecord, Datamapper, Mongo.
What is meant by the term web stack?
A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server. LAMP is one commonly used Web stack.


