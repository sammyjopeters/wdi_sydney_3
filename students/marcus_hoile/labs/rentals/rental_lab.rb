# Objects
# create classes for buildings listing and renters
require 'pry'
require 'pry-debugger'
require_relative 'building_class.rb'
require_relative 'listing_class.rb'
require_relative 'agent_class.rb'
require_relative 'tenant_class.rb'


def add_listing(vacant, rental)
	vacant << rental
end


# agent can remove listings when a tennant is found
def remove_listing(vacant, rental)
	vacant.delete_at(vacant.index(rental))	
end

# adds a tenant to the occupied list and 
def add_applicant(first_name, last_name, contact, rental, applicants)
	tenant = first_name + "_" + last_name
	tenant = Tenant.new((first_name + last_name), contact, rental)
	applicants << tenant
end



# agent can view and approve applications, view and add rentals
def agent_menu(vacant, tenants, applicants)
	puts "What would you like to do?\n(1) Add a new Rental\n(2) View Applications\n(3) View Rentals?\n(4) View Tenants?"
	option = gets.chomp.to_i
	if option == 1
		add_rental(vacant,tenants, applicants)
	elsif option == 2
		approve_applicants(vacant, tenants, applicants)
	elsif option == 3
		agent_view_rentals(vacant, tenants, applicants)
	else
		view_tenants(vacant, tenants, applicants)

	end
end

def agent_view_rentals(vacant, tenants, applicants)
	for rental in vacant do
		puts "$" + rental.rent + " " + rental.building.to_s
		puts
	end
	agent_menu(vacant, tenants, applicants)
end

def view_tenants(vacant, tenants, applicants)
	for tenant in tenants
		puts tenant.name + " is a tenant of the property at " + tenant.rental.building.to_s
		puts
	end
	agent_menu(vacant, tenants, applicants)
end
		
def add_rental(vacant, tenants, applicants)
	puts "What suburb is the property in?"
	suburb = gets.chomp.downcase
	puts "What is the address?"
	address = gets.chomp.downcase
	puts "What type of property is it?"
	type = gets.chomp.downcase
	puts "How many bedrooms?"
	bedrooms = gets.chomp.to_i
	puts "How many bathrooms?"
	bathrooms = gets.chomp.to_i

	building_name = address.strip
	rental_name = "rental_" + building_name
	building_name = Building.new(type, address, suburb, bedrooms, bathrooms)

	puts "Enter a description of the property:"
	description = gets.chomp
	puts "How much is the rent per week?"
	rent = gets.chomp 

	
	rental_name = Listing.new(building_name, description, rent)
	add_listing(vacant, rental_name)
	agent_menu(vacant, tenants, applicants)

end


def approve_applicants(vacant, tenants, applicants)
  for person in applicants do
		puts "#{person.name} #{person.contact} #{person.rental}"
		puts "Approve application?"
		approve = gets.chomp.downcase
		puts
		if approve.include?("y")
			vacant.delete(person.rental)
			tenants << person
			puts "#{person.name} is now a tenant of #{person.rental.building.suburb}.\n"
		end
  end

  agent_menu(vacant, tenants, applicants)
end


def view_rentals(vacant, applicants)
	# display listing to tennant and ask them to select one
	puts "Here are our available rentals. Which one are you interested in?"
	# display the value of one attribute for all objects
	
	for rental in vacant do
	  puts "$" + rental.rent + " " + rental.building.to_s
	  puts
	end
	
	rental_selected = gets.chomp.capitalize
	# p rental_selected
	# p suburb_arr.include?(rental_selected)


	rental_obj_selected = vacant.find { |p| rental_selected == p.building.suburb }
	puts "Here are the full details:"
	puts rental_obj_selected.building.to_s
	puts "$" + rental_obj_selected.rent + " per week"
	puts "Type: " + rental_obj_selected.building.type.capitalize
	puts "Bedrooms: #{rental_obj_selected.building.bedrooms}"
	puts "Bathrooms: #{rental_obj_selected.building.bathrooms}"
	puts "Description: #{rental_obj_selected.description}"
	puts


	# allow user to apply for rental
	puts "Would you like to submit an application for #{rental_obj_selected.building.to_s}?"
	apply = gets.chomp.downcase
	if apply.include?("y")
	  rental_application(apply, rental_obj_selected, vacant, applicants)
	else
		puts "Have a look at some of the other properties available."
		puts
		view_rentals(vacant, applicants)
	end

end


def rental_application(apply, rental, vacant, applicants)
		# collect details and create tenant in database
	submit = "n"
	while submit.include?("n")
		puts "What is your first name?"
		tenant_first_name = gets.chomp.downcase
		puts "What is your last name?"
		tenant_last_name = gets.chomp.downcase
		puts "What is your phone number?"
		tenant_contact = gets.chomp.to_i
		puts "Please confirm your details are correct below"
		puts "Name: " + tenant_first_name.capitalize + " " + tenant_last_name.capitalize
		puts "Phone number: #{tenant_contact}"
		puts "Rental property: " + rental.building.to_s
		puts "Rent is " + rental.rent + " per week."
		puts "Are the details correct? Y or N"
		submit = gets.chomp.downcase
	end
	tenant = [tenant_first_name, tenant_last_name, tenant_contact]
	submit_application(tenant, rental, vacant, applicants)

	
end


def submit_application(tenant, rental, vacant, applicants)
	vacant.delete(rental)
	add_applicant(tenant[0], tenant[1], tenant[2], rental, applicants)
	puts "Thanks #{tenant[0]}! We'll review your application for #{rental.building.to_s} and contact you as soon as possible."

end






# create all our buildings
petersham = Building.new("house", "234 Enmore rd", "Petersham", 4, 1)
redfern = Building.new("house", "740 Bourke st", "Redfern", 4, 2)
glebe = Building.new("house", "647 Pyrmont Bridge Rd", "Glebe", 4, 1)
surryhills = Building.new("apartment", "54/24 Crown St", "Surry Hills", 2, 1)
broadway = Building.new("apartment", "12/40 Broadway", "Broadway", 2, 1)

petersham_desc = "Lorizzle ipsum dolor uhuh ... yih! shut the shizzle up, consectetuer adipiscing elit."
redfern_desc = "Nullizzle sapizzle fo shizzle my nizzle, sure volutpizzle"
glebe_desc = "Readymade enim art party bitters, lomo Etsy Portland. "
surryhills_desc = "Pinterest Williamsburg consectetur cred nihil. Schlitz stumptown"
broadway_desc = "Dizzle fo shizzle mah nizzle fo rizzle, mah home g-dizzle dolor. "

# create our listings
petersham_rental = Listing.new(petersham, petersham_desc, "1340")
redfern_rental = Listing.new(redfern, redfern_desc, "1280")
glebe_rental = Listing.new(glebe, glebe_desc, "1180")
surryhills_rental = Listing.new(surryhills, surryhills_desc, "1420")
broadway_rental = Listing.new(broadway, broadway_desc, "1230")

# binding.pry







vacant_rentals = []
tenants = []
applicants = []

# add listings to the vacancy list
add_listing(vacant_rentals, petersham_rental)
add_listing(vacant_rentals, redfern_rental)
add_listing(vacant_rentals, glebe_rental)
add_listing(vacant_rentals, surryhills_rental)
add_listing(vacant_rentals, broadway_rental)

# create default agent and tenants 
marcus = Agent.new("marcus", "cheese")
ben_svalbe = add_applicant("ben", "svalbe", 99692263, broadway_rental, applicants)
corey = add_applicant("corey", "goding", 55555555, petersham_rental, applicants)


# this is the starts the user prompts and mimmicks the website interface

loop do
	puts "Would you like to do? \n(1) View Rentals\n(2) Log in as Admin\n(3) Exit"
	answer = gets.chomp.to_i
	if answer == 1
		view_rentals(vacant_rentals, applicants)
	elsif answer == 2
		# password = " "
		# while password != marcus.password
		# 	puts "What is your password?"
		# 	password = gets.chomp.downcase
		# end
		agent_menu(vacant, tenants, applicants)
	else
	end
	break if answer != 1 || 2
end 








# submissions are randomly approved
# on successful submission rental is removed from website listing and put in to occupied listing




# if rental_selected == rental.building.suburb.include?(rental_selected)
# 		puts "You have selected #{rental}"
# 	end
# end



# agent.remove_listing(prop_selected)
# puts "Congratulations you have got the rental."




# create the building objects first and then when we set up the listings we pass the bjects as an argument


#      Building # with room
#           type
#           size
#           address
#           # of bedrooms, bathrooms, 
#      Listing
#           description
#           rent
#           pictures
#           pets
#      Agent
          
#      Person
#           name
#           contact details
#           pets
          

# Actions - maybe could be methods
# renter can apply a listing
# renter can pay rent
# agent can add listings
# agent can select renter who has applied