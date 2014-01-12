require './shelter'
# require './client'
# require './animal-prompt'

# def initialize(name, number_of_children, age, number_of_pets, gender)
# client = Client.new("Beth", 3, 30, 1, "female")
# client2 = Client.new("John", 1, 45, 14, "male")

# def initialize(name, age, gender, species, toys)
# animal = Animal.new("Tiny", 3, "male", "cat", "string")
# animal2 = Animal.new("Biggy", 2, "female", "dog", "frisbee")


# def initialize(name, address, animal, client)
shelter = Shelter.new("HappiTails", "East 21st Street")
# shelter.add_animal(animal2)
# shelter.add_client(client2)


shelter.user_input_client
puts "shelter.shelter_clients: "
puts shelter.shelter_clients


shelter.user_input_animal
puts "shelter.shelter_animals: "
puts shelter.shelter_animals

