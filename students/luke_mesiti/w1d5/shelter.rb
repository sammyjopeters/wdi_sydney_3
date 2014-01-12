require './client'
require './animal-prompt'

class Shelter

	attr_accessor :name, :address, :shelter_animals, :shelter_clients

	def initialize(name, address)
		@name = name
		@address = address
		@shelter_animals = []
		@shelter_clients = []
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

	def user_input_animal
		puts "Please enter the animal's name:"
		animal_name = gets.chomp
		puts "Please enter the animal's age:"
		animal_age = gets.chomp
		puts "Please enter the animal's gender:"
		animal_gender = gets.chomp
		puts "Please enter the animal's species:"
		animal_species = gets.chomp
		puts "Please enter the animal's favourite toy(s)"
		animal_toys = gets.chomp
		self.add_animal(Animal.new(animal_name, animal_age, animal_gender, animal_species, animal_toys))
	end

	def user_input_client
		puts "Please enter the client's name:"
		client_name = gets.chomp
		puts "How many children does the client have?"
		client_no_children = gets.chomp
		puts "Please enter the client's age:"
		client_age = gets.chomp
		puts "Please enter the number of pets:"
		client_no_pets = gets.chomp
		puts "Please enter the clients gender:"
		client_gender = gets.chomp
		self.add_client(Client.new(client_name, client_no_children, client_age, client_no_pets, client_gender))
	end


end
