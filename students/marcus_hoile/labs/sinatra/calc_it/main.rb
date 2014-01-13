require 'sinatra'
require 'sinatra/reloader' if development?

get '/calc_form' do
	@first = params[:first].to_i
	@second = params[:second].to_i
	@operation = params[:operation]

	@result = case @operation
		when 'sum' then @first + @second
		when 'sub' then @first - @second
		when 'mult' then @first * @second
		when 'divide' then @first * @second
	end

	erb :calc_form
end