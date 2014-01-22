require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'

#display the homepage


get '/' do 

  #get SQL to display the info from the posts table in the database, limiting to the first 3 (0-2)
  sql = "SELECT * FROM posts ORDER BY created_at ASC LIMIT 2"
  #whatever result comes from running the SQL, make it into the @records  variable
  @records = run_sql(sql)
  #allow us to replace @id with the id that comes from the SQL...
  @id = params[:id]
  erb :home  

end


get '/posts' do
  #set the value of sort to whatever is clicked (see layout.erb links) OR the default (created time)
  @sort = params[:sort] || "created_at"
  #get SQL to display the info from the posts table in the database, sorting by the variable @sort
  sql = "SELECT * FROM posts ORDER BY #{@sort} ASC"
  #whatever result comes from running the SQL, make it into the @post variable
  @post = run_sql(sql)
  #allow us to replace @id with the id that comes from the SQL...
  @id = params[:id] 

  erb :listallposts
end

#get the 'create a post' page!

get '/posts/new' do
  erb :creatpost
end


#the action for creating a post
post '/posts' do
  sql = "INSERT INTO posts (title, tagline, postbody, author, created_at, updated_at) VALUES ('#{params[:title]}', '#{params[:tagline]}', '#{params[:postbody]}', '#{params[:author]}', '#{Time.now}', '#{Time.now}')"
  #run the query
  run_sql(sql)
  redirect to '/'
end


#show me the SQL info Kthx
get '/posts/:id' do


  @id = params[:id] 
  sql = "SELECT * FROM posts WHERE id=#{params[:id]}"
  # commentssql = "SELECT * FROM posts WHERE post_id=#{params[:id]} JOIN comments ON comments.post_id = posts.id"
  commentssql = "SELECT * FROM comments WHERE comments.post_id=#{params[:id]}"
  @comment = run_sql(commentssql)
  @records = run_sql(sql)
  @post = @records[0]
  puts "The result is #{commentssql} and the result of that is #{@comment}"


erb :viewpost
end




#the action for creating a comment
post '/posts/:id/comments' do
  @post_id = params[:post_id]
  sql = "INSERT INTO comments (author, commentbody, created_at, post_id) VALUES ('#{params[:author]}', '#{params[:commentbody]}', '#{Time.now}', #{@post_id})"
  puts "The @post_id is #{@post_id}"
  #run the query
  run_sql(sql)
  redirect to '/'
end

#modify the SQL data to delete tis post!
delete '/posts/:id' do
  sql = "DELETE FROM posts WHERE id =#{params[:id]}"
  run_sql(sql)
  redirect to '/'

end

#show me the form to edit an existing entry...
get '/posts/:id/edit' do
  sql = "SELECT * FROM posts WHERE id=#{params[:id]}"
  @records = run_sql(sql)
  @blogpost = @records[0]

  erb :editpost
end

#modify the information to edit the post
put '/posts/:id' do
  #first you need the sql command
  sql = "UPDATE posts set title='#{params[:title]}', tagline='#{params[:tagline]}', postbody='#{params[:postbody]}', author='#{params[:author]}',  updated_at='#{Time.now}' WHERE id = #{params[:id]} "
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