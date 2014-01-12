class Animal
	attr_accessor :name, :age, :gender, :species, :breed
	def initialize(name, age, gender, species, breed)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@breed = breed
	end

	def to_s
		"#{name} - a #{age} year old #{breed} #{species}"
	end

end