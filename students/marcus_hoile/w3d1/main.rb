require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'active_support/all'
require 'cgi'


get '/' do
	redirect to '/posts'
end



get '/posts' do
	if params[:sort_by] == "date"
	sql = "SELECT * from blog ORDER by created_at desc"
	elsif params[:sort_by] == "title"
	sql = "select * from blog ORDER by title"
	else
	sql = "SELECT * FROM blog ORDER BY updated_at desc"
	end
	@rows = run_sql(sql)

erb :home
end

get '/new' do

	erb :new
end

post '/create' do
	# insert into the db
	# i need to have character support

	sql = "INSERT INTO blog (title, description, body, author, created_at) VALUES ('#{params[:title]}', '#{params[:description]}', '#{params[:body]}', '#{params[:author]}', '#{Time.now}')"
	run_sql(sql)
	redirect to '/'
end

get '/post/:id' do
	sql = "SELECT * FROM blog WHERE ID = #{params[:id]}"
	@records = run_sql(sql)
	@post = @records[0]

	erb :post
end

post '/post/:id/destroy' do
	sql = "DELETE FROM blog WHERE ID = #{params[:id]}"
	run_sql(sql)
	redirect to '/'
end

get '/post/:id/edit' do
	sql = "SElECT * from blog where id = #{params[:id]}"
	@records = run_sql(sql)
	@post = @records[0]

	erb :edit
end

post '/post/:id' do
	sql = "UPDATE blog SET title = '#{params[:title]}', description = '#{params[:description]}', body = '#{params[:body]}', author = '#{params[:author]}', updated_at = '#{Time.now}' WHERE id = #{params[:id]} "
	run_sql(sql)
	redirect to '/'

end

def run_sql(sql)
	# connect to the cats database
	conn = PG.connect(:dbname => 'blog')
	# exec the sql in the argument
	res = conn.exec(sql)
	# close the db connection
	conn.close
	# return the result of the sql
	res


end
