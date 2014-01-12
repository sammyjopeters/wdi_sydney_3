# this is for the rental lab
class Building
	attr_accessor :type, :address, :bedrooms, :bathrooms, :suburb

	def initialize(type, address, suburb, bedrooms, bathrooms)
		@type = type.capitalize
		@address = address.split.map(&:capitalize).join(' ')
		@suburb = suburb.capitalize
		@bedrooms = bedrooms
		@bathrooms = bathrooms
	end

	def to_s
		"#{address} #{suburb}"
	end

end