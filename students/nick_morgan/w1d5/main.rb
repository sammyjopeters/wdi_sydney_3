require_relative "shelter"
require_relative "client"
require_relative "animal"

loop do
	puts "Select an option:"
	puts "- display all animals"
	puts "- display all clients"
	puts "- create an animal"
	puts "- create a client"
	puts "- facilitate client adopts an animal"
	puts "- facilitate client puts an animal up for adoption"
	puts "(type 'exit' to quit)"

	selection = gets.chomp.downcase

		if selection == "display all animals"
			if HappiTails.animals.empty? != true
				puts HappiTails.animals
			else
				puts "There are no animals in the shelter right now! Why don't you create one?"
			end
		elsif selection == "display all clients"
			if HappiTails.clients.empty? != true
				puts HappiTails.clients
			else
				puts "The shelter has no clients right now! Why don't you create one?"
			end
		elsif selection == "create an animal"
			puts "What do you want to name your animal?"
			name = gets.chomp
			puts "How old is your animal?"
			age = gets.chomp
			puts "What is your animal's gender?"
			gender = gets.chomp
			puts "What is your animal's species?"
			species = gets.chomp
			puts "Name a toy for your animal."
			toy = gets.chomp

			animal = Animal.new(name, age, gender, species, toy)
			puts animal

			HappiTails.animals << animal
		elsif selection == "create a client"
			puts "What is the client's name?"
			name = gets.chomp
			puts "How old is the client?"
			age = gets.chomp
			puts "What is the client's gender?"
			gender = gets.chomp

			client = Client.new(name, age, gender)
			puts client
			
			HappiTails.clients << client
		elsif selection == "facilitate client adopts an animal"
			clients = HappiTails.clients.map {|a| a.name}
			animals = HappiTails.animals.map {|a| a.name}

			puts "What client is doing the adoption? #{clients}"
			adopter = gets.chomp
			puts "What animal would you like #{adopter} to adopt? #{animals}"
			adopted = gets.chomp

			client = HappiTails.clients.find{|c| c.name == adopter}

			pet = HappiTails.animals.find{|a| a.name == adopted}

			client.pets << pet

			puts "#{client.name} has adopted #{pet.name}!"
		elsif selection == "facilitate client puts an animal up for adoption"
			clients = HappiTails.clients.map {|a| a.name}

			puts "What client is putting an animal up for adoption? #{clients}"
			adopter = gets.chomp

			giver = HappiTails.clients.find{|c| c.name == adopter}

			pet_list = giver.pets.map {|p| p.name}


			puts "What animal is #{giver.name} putting up for adoption? #{pet_list}"
			animal = gets.chomp

			gift = giver.pets.find{|p| p.name == animal}

			giver.pets.delete(gift)

			puts "#{giver.name} has put #{gift.name} up for adoption!"
		else
			puts "I'm sorry, that is an invalid command. Please try again."



		end


	break if selection == "exit"
end 

# JoeMonkey = Animal.new("Joe", 3, "male", "monkey", ["bananas", "ball"])

# HappiTails.add_animal(JoeMonkey)

# puts HappiTails
