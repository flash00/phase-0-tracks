# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
# get '/' do
#   @students = db.execute("SELECT * FROM students")
#   erb :home
# end

#show campuses on the home page
get '/' do
  @campuses = db.execute("SELECT distinct(name) FROM campuses")
  erb :DBC_students
end

# get '/' do
#   @students = db.execute("SELECT * FROM students")
#   erb :DBC_students
# end

# get '/students/new' do
#   erb :new_student
# end

# # create new students via
# # a form
# post '/students' do
#   db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
#   redirect '/'
# end

# create new campuses via
# a form
get '/campuses/new' do
  erb :new_campus_request
end

post '/campuses' do
  db.execute("INSERT INTO campuses (name, nickname) VALUES (?,?)", [params['name'], params['nickname']])
  redirect '/'
end

# add static resources