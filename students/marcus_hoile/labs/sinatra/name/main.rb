require 'sinatra'

get '/' do 
	'hellow world'
end

get '/about' do
	"I am jason pew mofo"
end

get "/name/:first/:last" do
	erb :name
end

get '/add/:num1/:num2' do
	"#{params[:num1].to_i + params[:num2].to_i}"
end

# get '/add/:num1/:num2' do
# 	erb :add
# end

get '/multiply/:num1/:num2' do
	"#{params[:num1].to_i * params[:num2].to_i}"
end

get '/subtract/:num1/:num2' do
	"#{params[:num1].to_i - params[:num2].to_i}"
end

get '/divide/:num1/:num2' do
	"#{params[:num1].to_i / params[:num2].to_i}"
end