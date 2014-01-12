class Shelter
	attr_accessor :current_animals, :current_clients

	def initialize(current_animals, current_clients)
		@current_animals = current_animals
		@current_clients = current_clients
	end

	def to_s
		puts "====HappyTails Shelter===="
		puts "Current animals: #{current_animals}"
		puts "Current clients: #{current_clients}"
	end

end


def list_all_clients
	puts "\n Listing all clients:"
	puts "{current_clients.key},"
end

def list_all_animals
	puts "\n listing all animals:"
	puts "#{current_animals.key}"
end