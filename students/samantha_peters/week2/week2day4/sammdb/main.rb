require 'sinatra'
require 'sinatra/reloader' if development?
require 'HTTParty'
require 'active_support/all'
require 'json'

def one_page_result(movietitle)
      get '/id/#{movietitle.to_s}' do
        @movie = params[:movietitle].downcase
        @movie.to_s.gsub!(/[[:space:]]/, "+") 
        @searchlist = JSON(HTTParty.get("http://www.omdbapi.com/?t=" + "#{movietitle.to_s}")) 
      end
end




get '/' do 
  if params[:movie].present?
    
    ##WORKING CODE FOR EXACT MATCH SEARCH
    # @movie = params[:movie].downcase
    # @movie.to_s.gsub!(/[[:space:]]/, "+") 
    # puts "The movie result is #{@movie.to_s}"
    # @searchresult = JSON(HTTParty.get("http://www.omdbapi.com/?t=" + "#{@movie.to_s}")) 



    @movie = params[:movie].downcase
    @movie.to_s.gsub!(/[[:space:]]/, "+") 
    @searchlist = JSON(HTTParty.get("http://www.omdbapi.com/?s=" + "#{@movie.to_s}"))






  end

  erb :index
end

get '/results' do
    
  if params[:movie].present?
    
    ##WORKING CODE FOR EXACT MATCH SEARCH
    # @movie = params[:movie].downcase
    # @movie.to_s.gsub!(/[[:space:]]/, "+") 
    # puts "The movie result is #{@movie.to_s}"
    # @searchresult = JSON(HTTParty.get("http://www.omdbapi.com/?t=" + "#{@movie.to_s}")) 


    @movie = params[:movie].downcase
    @movie.to_s.gsub!(/[[:space:]]/, "+") 
    @searchlist = JSON(HTTParty.get("http://www.omdbapi.com/?s=" + "#{@movie.to_s}"))

    if @searchlist["Search"].size == 1
      one_page_result(@movie)
    end


  end

erb :results
end

get '/id/:movieid' do

    @movieid = params[:movieid]
    @searchlist = JSON(HTTParty.get("http://www.omdbapi.com/?i=" + "#{@movieid.to_s}"))

  erb :id
end
