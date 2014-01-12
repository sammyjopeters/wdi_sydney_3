require './shelter'
require './client'
require './animal-prompt'



# lsshelter = Shelter.new("GA")


# def initialize(name, number_of_children, age, number_of_pets, gender)
client = Client.new("Beth", 3, 30, 1, "female")
client2 = Client.new("John", 1, 45, 14, "male")

# def initialize(name, age, gender, species, toys)
animal = Animal.new("Tiny", 3, "male", "cat", "string")
animal2 = Animal.new("Biggy", 2, "female", "dog", "frisbee")

# def initialize(name, address, animal, client)
shelter = Shelter.new("HappiTails", "East 21st Street", animal, client)
shelter.add_animal(animal2)
shelter.add_client(client2)


# puts client.to_s

# puts animal.to_s

# puts shelter.to_s
puts "shelter.shelter_animals: "
puts shelter.shelter_animals

puts "shelter.shelter_clients: "
puts shelter.shelter_clients