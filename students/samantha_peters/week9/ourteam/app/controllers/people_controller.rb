class PeopleController < ApplicationController

		def index

		@people = People.all
		respond_to do |format|
		format.html
		format.json { render json: @people }
		end

	end

end
