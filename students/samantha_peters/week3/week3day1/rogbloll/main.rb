require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'


get '/' do 

  sql = "SELECT * FROM posts"
  @post = run_sql(sql)
  @id = params[:id]

  erb :home  
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