# Define Animal as a class
class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name=nil, age=nil, gender=nil, species=nil)
    @name = name 
    @age = age 
    @gender = gender 
    @species = species
  end
  def to_s
    "The animal is #{@name}. The age is #{@age}. The gender is #{@gender}. The species is #{@species}. The toys are #{@toys}."
  end
end

class Client

  attr_accessor :name, :children, :age, :numpets

  def initialize(name=nil, children=nil, age=nil, num_pets=nil)
    @name = name 
    @children = children 
    @age = age
    @num_pets = num_pets 
  end 
  def to_s
    "The Clients name is #{@name}. They have #{@children}. They are #{@age} years old. They have #{@numpets} pets."
  end 
end 

class Shelter 
   attr_accessor :shelter_name, :animals

   def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals = []
  end
  def add_animal(animal)
    animals << animal
    puts "I now have #{animals.count} animals"
  end
end 

animal1 = Animal.new
animal1.name = "Monkey"
animal1.age = 2
animal1.gender = "male"
animal1.species = "mammal"


client1 = Client.new
client1.name = "Emily"
client1.children = 4
client1.age = 22
client1.num_pets = 2



r = Shelter.new("rspca")
r.add_animal(animal1)


