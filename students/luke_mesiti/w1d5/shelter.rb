# require './animal-prompt'
# require './client'

class Shelter

	attr_accessor :name, :address, :shelter_animals, :shelter_clients

	def initialize(name, address, animal, client)
		@name = name
		@address = address
		@shelter_animals = [animal]
		@shelter_clients = [client]
	end

	def to_s
		"#{name} shelter at #{address} has " 
	#	#{animal} animals and #{client} clients."
	end

	def add_animal(animal)
		shelter_animals.push(animal)
	end

	def add_client(client)
		shelter_clients.push(client)
	end

end
