class Shelter
	attr_accessor :name,:address,:no_animals,:no_pets

	def initialize(name,address)
		@name=name
		@address = address
		@no_animals = []
		@no_pets = []
	end

	def to_s
		"HappiTails shelter at 10 East 21st Street has 0 animals and 0 people"
		 "#{name} shelter at #{address} has #{no_animals.size} animals and #{no_pets.size} people"
	end

	def display_animals
	end

	def display_pets
	end
end