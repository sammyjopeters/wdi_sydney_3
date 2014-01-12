class Tenant
	attr_accessor :name, :contact, :rental, :pets
	def initialize(name, contact, rental)
		@name = name.capitalize
		@contact = contact
		@rental = rental
	end	

	# # can apply or select a listing from agent's website
	# def apply(property)
	# 	if property.include?($website_listing)
	# 		puts "I would like to apply for the #{property.building.address}"
	# 	end
	# end

	# tennant can pay rent
end