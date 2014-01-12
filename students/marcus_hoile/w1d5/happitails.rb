# animal shelter manager. Manage a list of animals and clients and facilitate adoptions

# create classes for animals and clients
require_relative 'animal_class.rb'
require_relative 'client_class.rb'



# create a method that will assign pets to clients. clients should be able to have multple pets.
def adopt_animal(animal, animals, clients)
  puts "What is your name?"
  name = gets.chomp.capitalize
  client_name = name.downcase.strip
  existing_client = clients.find { |client| client.name.downcase.strip == client_name }
    if existing_client == nil
		client_name = Client.new(name)
		clients << client_name
		animals.delete(animal)
		client_name.pets << animal
	else
	  # add animal to their pets array
      animals.delete(animal)
      existing_client.pets << animal
	end

  puts
  puts "Thank you #{name} for giving #{animal.name} a home :)"
  puts
  main_menu(animals, clients)

end

# menu for the shelter
def main_menu(animals, clients)
	puts "Would you like to do? \n(1) Adopt an Animal\n(2) Put Animal up for adoption\n(3) View Clients"
	answer = gets.chomp.to_i
	if answer == 1
		view_animals(animals, clients)
	elsif answer == 2
		put_up_animal(animals, clients)
	elsif answer == 3
		view_clients(animals, clients)
	end
end

# add an animal available for adoption
def add_animal(animal, animals)
  animals << animal
end

# add a new client to the the client list
def add_client(client, clients)
	clients << client
end

# view animals that are up for adoption
def view_animals(animals, clients)
	for animal in animals do
		puts animal.to_s
	end
	puts
	puts "Enter the name of the animal you would like to adopt:"
	animal_selected = gets.chomp.capitalize
	# find the animal in the animals array, delete and add as a pet to the client
	animal_to_adopt = animals.find { |animal| animal_selected == animal.name }
	adopt_animal(animal_to_adopt, animals, clients)
end

# view clients who have adopted animals
def view_clients(animals, clients)
	puts "Clients:"
	for client in clients do
		puts client.name + " has adopted these animals: "
		for pet in client.pets do
			puts "#{pet.name} - who is a #{pet.age} year old #{pet.breed}"

		end
		puts
	end
	puts
	main_menu(animals, clients)
end

# existing and new clients can put animals up for adoption
def put_up_animal(animals, clients)
	puts "What type of animal is it?"
	species = gets.chomp.capitalize
	puts "What breed of " + species + " is it?"
	breed = gets.chomp.capitalize
	puts "What is the sex of the " + species + "?"
	gender = gets.chomp.downcase
	if gender.include?("f")
	  puts "What is her name?"
	else
		puts "What is his name?"
	end
	name = gets.chomp.capitalize
	puts "How old is " + name + "?"
	age = gets.chomp.to_i
	animal_to_adopt = name.downcase.strip
	# create animal and add to shelter
	animal_to_adopt = Animal.new(name, age, gender, species, breed)
	add_animal(animal_to_adopt, animals)
	if gender.include?("f")
	  puts "We'll take " + name + "and make sure she finds a great home :)"
	else
		puts "We'll take " + name + "and make sure he finds a great home :)"
	end
	puts
	
	main_menu(animals, clients)
  
end


# create arrays to contain animals and clients
clients = []
animals = []

# create some animals
harry = Animal.new("Harry", 3, "Male", "Dog", "Staffordshire Terrier")
milo = Animal.new("Milo", 5, "Female", "Dog", "Schnauser")
bruce = Animal.new("Bruce", 4, "Male", "Cat", "Persian")
charlotte = Animal.new("Charlotte", 2, "Female", "Cat", "Moggy")
mlady = Animal.new("M'Lady", 5, "Female", "Dog", "Douche")

# create some clients
alison = Client.new("Alison Macartney")
ash = Client.new("Ashraf Eissa")

# add charlotte to a client
alison.pets << charlotte
ash.pets << mlady

# add animals to array
add_animal(harry, animals)
add_animal(milo, animals)
add_animal(bruce, animals)


# add clients to list
add_client(alison, clients)
add_client(ash, clients)

main_menu(animals, clients)





# method for putting up for adoption
# shelter lists all clients
# shelter lists all animals
# method for adopting a pet

# create cms for animal shelter which includes a menu of "display animals", "display clients", "add a client", "add an animal", "adopt an animal"