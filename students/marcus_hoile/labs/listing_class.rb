class Listing
	attr_accessor :description, :rent, :pets, :images
	attr_reader :building
	def initialize(building, description, rent)
		@building = building
		@description = description
		@rent = rent
		pets = "No"
		images = nil
	end

	def to_s
		"#{building}"
	end

end