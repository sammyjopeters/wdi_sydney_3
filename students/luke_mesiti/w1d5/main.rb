# require './shelter'
require './client'
require './animal-prompt'



# lsshelter = Shelter.new("GA")


# def initialize(name, number_of_children, age, number_of_pets, gender)
client = Client.new("Beth", 3, 30, 1, "female")

# def initialize(name, age, gender, species, toys)
animal = Animal.new("Tiny", 3, "male", "cat", "string")

puts client.to_s

puts animal.to_s