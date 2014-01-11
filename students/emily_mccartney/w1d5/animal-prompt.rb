# Define Animal as a class
class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name=nil, age=nil, gender=nil, species=nil, toys =[])
  end
  def to_s
    "The animal is #{@name}. The age is #{@age}. The gender is #{@gender}. The species is #{@species}. The toys are #{@toys}."
  end
end

class Client

  attr_accessor :name, :children, :age, :numpets

  def initialize(name=nil, children=nil, age=nil, num_pets=[])
  end 
  def to_s
    "The Clients name is #{@name}. They have #{@children}. They are #{@age} years old. They have #{@numpets} pets."
  end 
end 

class Shelter 
   attr_accessor :shelter_name, :animals, :description

   def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals =[]
    @shelter_description = shelter_description
  end
  def add_animal(animal)
    animals << animal
    puts "I now have #{animals.count} animals"
  end
  def add_client(client)
    clients << client
    puts "There are  #{clients.count} clients"
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
# client1.num_pets = 2

newshelter= Shelter.new("rspca")
#prints out the shelter name and the animals in there
newshelter.add_animal(animal1)

animals =[animal1]
clients = [client1]

#ask do you want to add a client? If they want to add a client it asks them to put in their details all these details will be stored in the clients array. This will add them to the clients list
  


loop do 

puts "Do you want to add a client? (create_c, create_a, clients, animals )"
client_command = gets.chomp.downcase

break if client_command == "q"

if client_command == "create_c"
  puts "what is your name?"
  c_name = gets.chomp.downcase

  puts "how many children do you have?"
  c_children = gets.chomp.to_i

  client_create = Client.new
  client_create.name = c_name
  client_create.children = c_children

  clients.push(client_create)

elsif client_command == "create_a"
  puts "what is the name of your animal?"
  a_name = gets.chomp.downcase

  puts "How old is #{a_name}?"
  a_age = gets.chomp.to_i

  animal_create = Animal.new
  animal_create.name = a_name
  animal_create.age = a_age

  animals.push(animal_create)

elsif client_command == "clients"
  puts clients.map{|client| client.name}

  puts "what client do you want to see?"
  clients_information = gets.chomp.downcase

  client_listing = clients.find{|client| client.name == clients_information }

  puts client_listing

 elsif client_command == "animals"
  puts animals.map{|animal| animal.name}

  puts "What animal do you want to see?"
  animal_information = gets.chomp.downcase

  animal_listing = animals.find{|animal| animal.name == animal_information }

  puts animal_listing

end

end
#do you want to add animals to the shelter? if they want to add an animal to the shelter it asks for the details of the animal and then it adds the animal to the animal array.


#if they want to donate an animal it will take the animal out of their num_pets array and then put it into the animal list.  

#do you want to adopt pets? if so it will display the animals and then the client can select it and it will go into their client array. 






