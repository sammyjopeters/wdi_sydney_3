require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'

#display the homepage
get '/' do 

  #get SQL to display the info from the posts table in the database
  sql = "SELECT * FROM posts"
  #whatever result comes from running the SQL, make it into the @post variable
  @post = run_sql(sql)
  #allow us to replace @id with the id that comes from the SQL...
  @id = params[:id]

  erb :home  
end

get '/post/:id' do

  sql = "SELECT * FROM posts WHERE id=#{params[:id]}"
  @records = run_sql(sql)
  @post = @records[0]

erb :viewpost
end


#get the 'create a post' page!

get '/newpost' do
  erb :creatpost
end


#the action for creating a post
post '/create' do
  sql = "INSERT INTO posts (title, tagline, postbody, author, created) VALUES ('#{params[:title]}', '#{params[:tagline]}', '#{params[:postbody]}', '#{params[:author]}', '#{Time.now}')"
  #run the query
  run_sql(sql)
  redirect to '/'
end



# This is the method to run our SQL Calls to our database "blog"
def run_sql(sql)
  #connect to the|db|
  conn = PG.connect(:dbname => 'rogbloll')


  #execute the db in the argument
  res = conn.exec(sql)

  #now close the db
  conn.close

  #now return the result of the query...
  res


    
  end