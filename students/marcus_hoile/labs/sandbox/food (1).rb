class AllergyError < RuntimeError
end

class Person
	attr_accessor :stomach, :allergies


	def initialize
		@stomach = []
	end
	def eat(food)
		# if food has allergies return error if not eat the food
		if food.inlcude?(allergies)
			raise AllergyError,"this food is bad for you"
		else 
			stomach.push(food)

		end
		stomach
	end
end

# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.
chris=Person.new
chris.allergies =("gluten") 
chris.eat(pizza)



# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

# When a person attempts to eat a food they are allergic to, raise a custom exception
# For example:  AllergyError


# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exceptoin
