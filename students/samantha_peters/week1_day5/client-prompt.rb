class Client
	attr_accessor :name, :number_of_children, :age, :number_of_pets

	def initialize(name, number_of_children, age, number_of_pets)
		@name = name
		@number_of_children = number_of_children
		@age = age
		@number_of_pets = number_of_pets
	end

	def to_s
		puts "This is #{name}"
		puts "They have #{number_of_children} kids. Poor sods."
		puts "They're #{age} years old"
		puts "At home, they already have #{number_of_pets} animals!"
	end

end






